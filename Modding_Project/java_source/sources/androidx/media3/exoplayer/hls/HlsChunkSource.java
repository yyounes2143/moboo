package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.DataChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes.dex */
class HlsChunkSource {
    public static final int CHUNK_PUBLICATION_STATE_PRELOAD = 0;
    public static final int CHUNK_PUBLICATION_STATE_PUBLISHED = 1;
    public static final int CHUNK_PUBLICATION_STATE_REMOVED = 2;
    private static final int KEY_CACHE_SIZE = 4;
    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private final DataSource encryptionDataSource;
    @Nullable
    private Uri expectedPlaylistUrl;
    private final HlsExtractorFactory extractorFactory;
    @Nullable
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isPrimaryTimestampSource;
    private final DataSource mediaDataSource;
    @Nullable
    private final List<Format> muxedCaptionFormats;
    private final PlayerId playerId;
    private final Format[] playlistFormats;
    private final HlsPlaylistTracker playlistTracker;
    private final Uri[] playlistUrls;
    private boolean seenExpectedPlaylistError;
    private final long timestampAdjusterInitializationTimeoutMs;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private ExoTrackSelection trackSelection;
    private long lastChunkRequestRealtimeMs = -9223372036854775807L;
    private final FullSegmentEncryptionKeyCache keyCache = new FullSegmentEncryptionKeyCache(4);
    private byte[] scratchSpace = Util.EMPTY_BYTE_ARRAY;
    private long liveEdgeInPeriodTimeUs = -9223372036854775807L;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class EncryptionKeyChunk extends DataChunk {
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, @Nullable Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
        }

        @Override // androidx.media3.exoplayer.source.chunk.DataChunk
        public void consume(byte[] bArr, int i) {
            this.result = Arrays.copyOf(bArr, i);
        }

        @Nullable
        public byte[] getResult() {
            return this.result;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class HlsChunkHolder {
        @Nullable
        public Chunk chunk;
        public boolean endOfStream;
        @Nullable
        public Uri playlistUrl;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {
        private final String playlistBaseUri;
        private final List<HlsMediaPlaylist.SegmentBase> segmentBases;
        private final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(String str, long j, List<HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.playlistBaseUri = str;
            this.startOfPlaylistInPeriodUs = j;
            this.segmentBases = list;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return this.startOfPlaylistInPeriodUs + segmentBase.relativeStartTimeUs + segmentBase.durationUs;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.startOfPlaylistInPeriodUs + this.segmentBases.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return new DataSpec(UriUtil.resolveToUri(this.playlistBaseUri, segmentBase.url), segmentBase.byteRangeOffset, segmentBase.byteRangeLength);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(iArr[0]));
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        @Nullable
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!isTrackExcluded(this.selectedIndex, elapsedRealtime)) {
                return;
            }
            for (int i = this.length - 1; i >= 0; i--) {
                if (!isTrackExcluded(i, elapsedRealtime)) {
                    this.selectedIndex = i;
                    return;
                }
            }
            throw new IllegalStateException();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class SegmentBaseHolder {
        public final boolean isPreload;
        public final long mediaSequence;
        public final int partIndex;
        public final HlsMediaPlaylist.SegmentBase segmentBase;

        public SegmentBaseHolder(HlsMediaPlaylist.SegmentBase segmentBase, long j, int i) {
            boolean z;
            this.segmentBase = segmentBase;
            this.mediaSequence = j;
            this.partIndex = i;
            if ((segmentBase instanceof HlsMediaPlaylist.Part) && ((HlsMediaPlaylist.Part) segmentBase).isPreload) {
                z = true;
            } else {
                z = false;
            }
            this.isPreload = z;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, @Nullable TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, long j, @Nullable List<Format> list, PlayerId playerId, @Nullable CmcdConfiguration cmcdConfiguration) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.playlistUrls = uriArr;
        this.playlistFormats = formatArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.timestampAdjusterInitializationTimeoutMs = j;
        this.muxedCaptionFormats = list;
        this.playerId = playerId;
        this.cmcdConfiguration = cmcdConfiguration;
        DataSource createDataSource = hlsDataSourceFactory.createDataSource(1);
        this.mediaDataSource = createDataSource;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < uriArr.length; i++) {
            if ((formatArr[i].roleFlags & 16384) == 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, Ints.toArray(arrayList));
    }

    private void deactivatePlaylistForSelectedTrack() {
        this.playlistTracker.deactivatePlaylistForPlayback(this.playlistUrls[this.trackSelection.getSelectedIndexInTrackGroup()]);
    }

    @Nullable
    private static Uri getFullEncryptionKeyUri(HlsMediaPlaylist hlsMediaPlaylist, @Nullable HlsMediaPlaylist.SegmentBase segmentBase) {
        String str;
        if (segmentBase != null && (str = segmentBase.fullSegmentEncryptionKeyUri) != null) {
            return UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, str);
        }
        return null;
    }

    private boolean getIsMuxedAudioAndVideo() {
        Format format = this.trackGroup.getFormat(this.trackSelection.getSelectedIndex());
        String audioMediaMimeType = MimeTypes.getAudioMediaMimeType(format.codecs);
        String videoMediaMimeType = MimeTypes.getVideoMediaMimeType(format.codecs);
        if (audioMediaMimeType != null && videoMediaMimeType != null) {
            return true;
        }
        return false;
    }

    private Pair<Long, Integer> getNextMediaSequenceAndPartIndex(@Nullable HlsMediaChunk hlsMediaChunk, boolean z, HlsMediaPlaylist hlsMediaPlaylist, long j, long j2) {
        boolean z2;
        List<HlsMediaPlaylist.Part> list;
        long j3;
        long j4;
        int i = -1;
        if (hlsMediaChunk != null && !z) {
            if (hlsMediaChunk.isLoadCompleted()) {
                if (hlsMediaChunk.partIndex == -1) {
                    j4 = hlsMediaChunk.getNextChunkIndex();
                } else {
                    j4 = hlsMediaChunk.chunkIndex;
                }
                Long valueOf = Long.valueOf(j4);
                int i2 = hlsMediaChunk.partIndex;
                if (i2 != -1) {
                    i = i2 + 1;
                }
                return new Pair<>(valueOf, Integer.valueOf(i));
            }
            return new Pair<>(Long.valueOf(hlsMediaChunk.chunkIndex), Integer.valueOf(hlsMediaChunk.partIndex));
        }
        long j5 = hlsMediaPlaylist.durationUs + j;
        if (hlsMediaChunk != null && !this.independentSegments) {
            j2 = hlsMediaChunk.startTimeUs;
        }
        if (!hlsMediaPlaylist.hasEndTag && j2 >= j5) {
            return new Pair<>(Long.valueOf(hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()), -1);
        }
        long j6 = j2 - j;
        List<HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
        Long valueOf2 = Long.valueOf(j6);
        int i3 = 0;
        if (this.playlistTracker.isLive() && hlsMediaChunk != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) list2, valueOf2, true, z2);
        long j7 = binarySearchFloor + hlsMediaPlaylist.mediaSequence;
        if (binarySearchFloor >= 0) {
            HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(binarySearchFloor);
            if (j6 < segment.relativeStartTimeUs + segment.durationUs) {
                list = segment.parts;
            } else {
                list = hlsMediaPlaylist.trailingParts;
            }
            while (true) {
                if (i3 >= list.size()) {
                    break;
                }
                HlsMediaPlaylist.Part part = list.get(i3);
                if (j6 < part.relativeStartTimeUs + part.durationUs) {
                    if (part.isIndependent) {
                        if (list == hlsMediaPlaylist.trailingParts) {
                            j3 = 1;
                        } else {
                            j3 = 0;
                        }
                        j7 += j3;
                        i = i3;
                    }
                } else {
                    i3++;
                }
            }
        }
        return new Pair<>(Long.valueOf(j7), Integer.valueOf(i));
    }

    @Nullable
    private static SegmentBaseHolder getNextSegmentHolder(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 == hlsMediaPlaylist.segments.size()) {
            if (i == -1) {
                i = 0;
            }
            if (i >= hlsMediaPlaylist.trailingParts.size()) {
                return null;
            }
            return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(i), j, i);
        }
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
        if (i == -1) {
            return new SegmentBaseHolder(segment, j, -1);
        }
        if (i < segment.parts.size()) {
            return new SegmentBaseHolder(segment.parts.get(i), j, i);
        }
        int i3 = i2 + 1;
        if (i3 < hlsMediaPlaylist.segments.size()) {
            return new SegmentBaseHolder(hlsMediaPlaylist.segments.get(i3), j + 1, -1);
        }
        if (hlsMediaPlaylist.trailingParts.isEmpty()) {
            return null;
        }
        return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(0), j + 1, 0);
    }

    @VisibleForTesting
    public static List<HlsMediaPlaylist.SegmentBase> getSegmentBaseList(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 >= 0 && hlsMediaPlaylist.segments.size() >= i2) {
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            if (i2 < hlsMediaPlaylist.segments.size()) {
                if (i != -1) {
                    HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
                    if (i == 0) {
                        arrayList.add(segment);
                    } else if (i < segment.parts.size()) {
                        List<HlsMediaPlaylist.Part> list = segment.parts;
                        arrayList.addAll(list.subList(i, list.size()));
                    }
                    i2++;
                }
                List<HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
                arrayList.addAll(list2.subList(i2, list2.size()));
                i = 0;
            }
            if (hlsMediaPlaylist.partTargetDurationUs != -9223372036854775807L) {
                if (i != -1) {
                    i3 = i;
                }
                if (i3 < hlsMediaPlaylist.trailingParts.size()) {
                    List<HlsMediaPlaylist.Part> list3 = hlsMediaPlaylist.trailingParts;
                    arrayList.addAll(list3.subList(i3, list3.size()));
                }
            }
            return Collections.unmodifiableList(arrayList);
        }
        return ImmutableList.of();
    }

    @Nullable
    private Chunk maybeCreateEncryptionChunkFor(@Nullable Uri uri, int i, boolean z, @Nullable CmcdData.Factory factory) {
        if (uri == null) {
            return null;
        }
        byte[] remove = this.keyCache.remove(uri);
        if (remove != null) {
            this.keyCache.put(uri, remove);
            return null;
        }
        DataSpec build = new DataSpec.Builder().setUri(uri).setFlags(1).build();
        if (factory != null) {
            if (z) {
                factory.setObjectType(CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT);
            }
            build = factory.createCmcdData().addToDataSpec(build);
        }
        return new EncryptionKeyChunk(this.encryptionDataSource, build, this.playlistFormats[i], this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.scratchSpace);
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        long j2 = this.liveEdgeInPeriodTimeUs;
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j2 - j;
    }

    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        long endTimeUs;
        if (hlsMediaPlaylist.hasEndTag) {
            endTimeUs = -9223372036854775807L;
        } else {
            endTimeUs = hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
        }
        this.liveEdgeInPeriodTimeUs = endTimeUs;
    }

    public MediaChunkIterator[] createMediaChunkIterators(@Nullable HlsMediaChunk hlsMediaChunk, long j) {
        int indexOf;
        boolean z;
        if (hlsMediaChunk == null) {
            indexOf = -1;
        } else {
            indexOf = this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        }
        int i = indexOf;
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i2 = 0; i2 < length; i2++) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i2);
            Uri uri = this.playlistUrls[indexInTrackGroup];
            if (!this.playlistTracker.isSnapshotValid(uri)) {
                mediaChunkIteratorArr[i2] = MediaChunkIterator.EMPTY;
            } else {
                HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, false);
                Assertions.checkNotNull(playlistSnapshot);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
                if (indexInTrackGroup != i) {
                    z = true;
                } else {
                    z = false;
                }
                Pair<Long, Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, z, playlistSnapshot, initialStartTimeUs, j);
                mediaChunkIteratorArr[i2] = new HlsMediaPlaylistSegmentIterator(playlistSnapshot.baseUri, initialStartTimeUs, getSegmentBaseList(playlistSnapshot, ((Long) nextMediaSequenceAndPartIndex.first).longValue(), ((Integer) nextMediaSequenceAndPartIndex.second).intValue()));
            }
        }
        return mediaChunkIteratorArr;
    }

    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        HlsMediaPlaylist hlsMediaPlaylist;
        long j2;
        int selectedIndex = this.trackSelection.getSelectedIndex();
        Uri[] uriArr = this.playlistUrls;
        if (selectedIndex < uriArr.length && selectedIndex != -1) {
            hlsMediaPlaylist = this.playlistTracker.getPlaylistSnapshot(uriArr[this.trackSelection.getSelectedIndexInTrackGroup()], true);
        } else {
            hlsMediaPlaylist = null;
        }
        if (hlsMediaPlaylist != null && !hlsMediaPlaylist.segments.isEmpty() && hlsMediaPlaylist.hasIndependentSegments) {
            long initialStartTimeUs = hlsMediaPlaylist.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
            long j3 = j - initialStartTimeUs;
            int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(j3), true, true);
            long j4 = hlsMediaPlaylist.segments.get(binarySearchFloor).relativeStartTimeUs;
            if (binarySearchFloor != hlsMediaPlaylist.segments.size() - 1) {
                j2 = hlsMediaPlaylist.segments.get(binarySearchFloor + 1).relativeStartTimeUs;
            } else {
                j2 = j4;
            }
            return seekParameters.resolveSeekPositionUs(j3, j4, j2) + initialStartTimeUs;
        }
        return j;
    }

    public int getChunkPublicationState(HlsMediaChunk hlsMediaChunk) {
        List<HlsMediaPlaylist.Part> list;
        if (hlsMediaChunk.partIndex == -1) {
            return 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) Assertions.checkNotNull(this.playlistTracker.getPlaylistSnapshot(this.playlistUrls[this.trackGroup.indexOf(hlsMediaChunk.trackFormat)], false));
        int i = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i < 0) {
            return 1;
        }
        if (i < hlsMediaPlaylist.segments.size()) {
            list = hlsMediaPlaylist.segments.get(i).parts;
        } else {
            list = hlsMediaPlaylist.trailingParts;
        }
        if (hlsMediaChunk.partIndex >= list.size()) {
            return 2;
        }
        HlsMediaPlaylist.Part part = list.get(hlsMediaChunk.partIndex);
        if (part.isPreload) {
            return 0;
        }
        if (Util.areEqual(Uri.parse(UriUtil.resolve(hlsMediaPlaylist.baseUri, part.url)), hlsMediaChunk.dataSpec.uri)) {
            return 1;
        }
        return 2;
    }

    public void getNextChunk(LoadingInfo loadingInfo, long j, List<HlsMediaChunk> list, boolean z, HlsChunkHolder hlsChunkHolder) {
        HlsMediaChunk hlsMediaChunk;
        int indexOf;
        HlsMediaChunk hlsMediaChunk2;
        long j2;
        CmcdData.Factory factory;
        String objectType;
        long j3;
        int i;
        if (list.isEmpty()) {
            hlsMediaChunk = null;
        } else {
            hlsMediaChunk = (HlsMediaChunk) Iterables.getLast(list);
        }
        if (hlsMediaChunk == null) {
            indexOf = -1;
        } else {
            indexOf = this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        }
        long j4 = loadingInfo.playbackPositionUs;
        long j5 = j - j4;
        long resolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j4);
        if (hlsMediaChunk != null && !this.independentSegments) {
            long durationUs = hlsMediaChunk.getDurationUs();
            j5 = Math.max(0L, j5 - durationUs);
            if (resolveTimeToLiveEdgeUs != -9223372036854775807L) {
                resolveTimeToLiveEdgeUs = Math.max(0L, resolveTimeToLiveEdgeUs - durationUs);
            }
        }
        long j6 = j5;
        this.trackSelection.updateSelectedTrack(j4, j6, resolveTimeToLiveEdgeUs, list, createMediaChunkIterators(hlsMediaChunk, j));
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z2 = false;
        if (indexOf != selectedIndexInTrackGroup) {
            z2 = true;
        }
        Uri uri = this.playlistUrls[selectedIndexInTrackGroup];
        if (!this.playlistTracker.isSnapshotValid(uri)) {
            hlsChunkHolder.playlistUrl = uri;
            this.seenExpectedPlaylistError &= uri.equals(this.expectedPlaylistUrl);
            this.expectedPlaylistUrl = uri;
            return;
        }
        HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, true);
        Assertions.checkNotNull(playlistSnapshot);
        this.independentSegments = playlistSnapshot.hasIndependentSegments;
        updateLiveEdgeTimeUs(playlistSnapshot);
        HlsMediaPlaylist hlsMediaPlaylist = playlistSnapshot;
        Uri uri2 = uri;
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        Pair<Long, Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, z2, hlsMediaPlaylist, initialStartTimeUs, j);
        long longValue = ((Long) nextMediaSequenceAndPartIndex.first).longValue();
        int intValue = ((Integer) nextMediaSequenceAndPartIndex.second).intValue();
        HlsMediaChunk hlsMediaChunk3 = hlsMediaChunk;
        boolean z3 = z2;
        if (longValue < hlsMediaPlaylist.mediaSequence && hlsMediaChunk3 != null && z3) {
            uri2 = this.playlistUrls[indexOf];
            hlsMediaPlaylist = this.playlistTracker.getPlaylistSnapshot(uri2, true);
            Assertions.checkNotNull(hlsMediaPlaylist);
            initialStartTimeUs = hlsMediaPlaylist.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
            hlsMediaChunk2 = hlsMediaChunk3;
            Pair<Long, Integer> nextMediaSequenceAndPartIndex2 = getNextMediaSequenceAndPartIndex(hlsMediaChunk2, false, hlsMediaPlaylist, initialStartTimeUs, j);
            longValue = ((Long) nextMediaSequenceAndPartIndex2.first).longValue();
            intValue = ((Integer) nextMediaSequenceAndPartIndex2.second).intValue();
            selectedIndexInTrackGroup = indexOf;
        } else {
            hlsMediaChunk2 = hlsMediaChunk3;
        }
        int i2 = intValue;
        long j7 = initialStartTimeUs;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        Uri uri3 = uri2;
        if (selectedIndexInTrackGroup != indexOf && indexOf != -1) {
            this.playlistTracker.deactivatePlaylistForPlayback(this.playlistUrls[indexOf]);
        }
        if (longValue < hlsMediaPlaylist2.mediaSequence) {
            this.fatalError = new BehindLiveWindowException();
            return;
        }
        SegmentBaseHolder nextSegmentHolder = getNextSegmentHolder(hlsMediaPlaylist2, longValue, i2);
        if (nextSegmentHolder == null) {
            if (!hlsMediaPlaylist2.hasEndTag) {
                hlsChunkHolder.playlistUrl = uri3;
                this.seenExpectedPlaylistError &= uri3.equals(this.expectedPlaylistUrl);
                this.expectedPlaylistUrl = uri3;
                return;
            } else if (!z && !hlsMediaPlaylist2.segments.isEmpty()) {
                j2 = 1;
                nextSegmentHolder = new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) Iterables.getLast(hlsMediaPlaylist2.segments), (hlsMediaPlaylist2.mediaSequence + hlsMediaPlaylist2.segments.size()) - 1, -1);
            } else {
                hlsChunkHolder.endOfStream = true;
                return;
            }
        } else {
            j2 = 1;
        }
        SegmentBaseHolder segmentBaseHolder = nextSegmentHolder;
        this.seenExpectedPlaylistError = false;
        this.expectedPlaylistUrl = null;
        if (this.cmcdConfiguration != null) {
            CmcdData.Factory factory2 = new CmcdData.Factory(this.cmcdConfiguration, this.trackSelection, Math.max(0L, j6), loadingInfo.playbackSpeed, "h", !hlsMediaPlaylist2.hasEndTag, loadingInfo.rebufferedSince(this.lastChunkRequestRealtimeMs), list.isEmpty());
            if (getIsMuxedAudioAndVideo()) {
                objectType = CmcdData.Factory.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO;
            } else {
                objectType = CmcdData.Factory.getObjectType(this.trackSelection);
            }
            factory = factory2.setObjectType(objectType);
            int i3 = segmentBaseHolder.partIndex;
            if (i3 == -1) {
                j3 = segmentBaseHolder.mediaSequence + j2;
            } else {
                j3 = segmentBaseHolder.mediaSequence;
            }
            if (i3 == -1) {
                i = -1;
            } else {
                i = i3 + 1;
            }
            SegmentBaseHolder nextSegmentHolder2 = getNextSegmentHolder(hlsMediaPlaylist2, j3, i);
            if (nextSegmentHolder2 != null) {
                factory.setNextObjectRequest(UriUtil.getRelativePath(UriUtil.resolveToUri(hlsMediaPlaylist2.baseUri, segmentBaseHolder.segmentBase.url), UriUtil.resolveToUri(hlsMediaPlaylist2.baseUri, nextSegmentHolder2.segmentBase.url)));
                String str = nextSegmentHolder2.segmentBase.byteRangeOffset + "-";
                if (nextSegmentHolder2.segmentBase.byteRangeLength != -1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    HlsMediaPlaylist.SegmentBase segmentBase = nextSegmentHolder2.segmentBase;
                    sb.append(segmentBase.byteRangeOffset + segmentBase.byteRangeLength);
                    str = sb.toString();
                }
                factory.setNextRangeRequest(str);
            }
        } else {
            factory = null;
        }
        this.lastChunkRequestRealtimeMs = SystemClock.elapsedRealtime();
        Uri fullEncryptionKeyUri = getFullEncryptionKeyUri(hlsMediaPlaylist2, segmentBaseHolder.segmentBase.initializationSegment);
        Chunk maybeCreateEncryptionChunkFor = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri, selectedIndexInTrackGroup, true, factory);
        hlsChunkHolder.chunk = maybeCreateEncryptionChunkFor;
        if (maybeCreateEncryptionChunkFor == null) {
            Uri fullEncryptionKeyUri2 = getFullEncryptionKeyUri(hlsMediaPlaylist2, segmentBaseHolder.segmentBase);
            Chunk maybeCreateEncryptionChunkFor2 = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri2, selectedIndexInTrackGroup, false, factory);
            hlsChunkHolder.chunk = maybeCreateEncryptionChunkFor2;
            if (maybeCreateEncryptionChunkFor2 == null) {
                boolean shouldSpliceIn = HlsMediaChunk.shouldSpliceIn(hlsMediaChunk2, uri3, hlsMediaPlaylist2, segmentBaseHolder, j7);
                if (shouldSpliceIn && segmentBaseHolder.isPreload) {
                    return;
                }
                hlsChunkHolder.chunk = HlsMediaChunk.createInstance(this.extractorFactory, this.mediaDataSource, this.playlistFormats[selectedIndexInTrackGroup], j7, hlsMediaPlaylist2, segmentBaseHolder, uri3, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.isPrimaryTimestampSource, this.timestampAdjusterProvider, this.timestampAdjusterInitializationTimeoutMs, hlsMediaChunk2, this.keyCache.get(fullEncryptionKeyUri2), this.keyCache.get(fullEncryptionKeyUri), shouldSpliceIn, this.playerId, factory);
            }
        }
    }

    public int getPreferredQueueSize(long j, List<? extends MediaChunk> list) {
        if (this.fatalError == null && this.trackSelection.length() >= 2) {
            return this.trackSelection.evaluateQueueSize(j, list);
        }
        return list.size();
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public ExoTrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public boolean hasIndependentSegments() {
        return this.independentSegments;
    }

    public boolean maybeExcludeTrack(Chunk chunk, long j) {
        ExoTrackSelection exoTrackSelection = this.trackSelection;
        return exoTrackSelection.excludeTrack(exoTrackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), j);
    }

    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException == null) {
            Uri uri = this.expectedPlaylistUrl;
            if (uri != null && this.seenExpectedPlaylistError) {
                this.playlistTracker.maybeThrowPlaylistRefreshError(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    public boolean obtainsChunksForPlaylist(Uri uri) {
        return Util.contains(this.playlistUrls, uri);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            this.keyCache.put(encryptionKeyChunk.dataSpec.uri, (byte[]) Assertions.checkNotNull(encryptionKeyChunk.getResult()));
        }
    }

    public boolean onPlaylistError(Uri uri, long j) {
        int indexOf;
        int i = 0;
        while (true) {
            Uri[] uriArr = this.playlistUrls;
            if (i < uriArr.length) {
                if (uriArr[i].equals(uri)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1 || (indexOf = this.trackSelection.indexOf(i)) == -1) {
            return true;
        }
        this.seenExpectedPlaylistError |= uri.equals(this.expectedPlaylistUrl);
        if (j != -9223372036854775807L && (!this.trackSelection.excludeTrack(indexOf, j) || !this.playlistTracker.excludeMediaPlaylist(uri, j))) {
            return false;
        }
        return true;
    }

    public void reset() {
        deactivatePlaylistForSelectedTrack();
        this.fatalError = null;
    }

    public void setIsPrimaryTimestampSource(boolean z) {
        this.isPrimaryTimestampSource = z;
    }

    public void setTrackSelection(ExoTrackSelection exoTrackSelection) {
        deactivatePlaylistForSelectedTrack();
        this.trackSelection = exoTrackSelection;
    }

    public boolean shouldCancelLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }
}
