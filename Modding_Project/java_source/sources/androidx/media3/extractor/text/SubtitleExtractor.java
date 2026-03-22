package androidx.media3.extractor.text;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public class SubtitleExtractor implements Extractor {
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int STATE_CREATED = 0;
    private static final int STATE_EXTRACTING = 2;
    private static final int STATE_FINISHED = 4;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 5;
    private static final int STATE_SEEKING = 3;
    private int bytesRead;
    private final Format format;
    private final SubtitleParser subtitleParser;
    private TrackOutput trackOutput;
    private final CueEncoder cueEncoder = new CueEncoder();
    private byte[] subtitleData = Util.EMPTY_BYTE_ARRAY;
    private final ParsableByteArray scratchSampleArray = new ParsableByteArray();
    private final List<Sample> samples = new ArrayList();
    private int state = 0;
    private long[] timestamps = Util.EMPTY_LONG_ARRAY;
    private long seekTimeUs = -9223372036854775807L;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Sample implements Comparable<Sample> {
        private final byte[] data;
        private final long timeUs;

        private Sample(long j, byte[] bArr) {
            this.timeUs = j;
            this.data = bArr;
        }

        @Override // java.lang.Comparable
        public int compareTo(Sample sample) {
            return Long.compare(this.timeUs, sample.timeUs);
        }
    }

    public SubtitleExtractor(SubtitleParser subtitleParser, Format format) {
        this.subtitleParser = subtitleParser;
        this.format = format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCodecs(format.sampleMimeType).setCueReplacementBehavior(subtitleParser.getCueReplacementBehavior()).build();
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SubtitleExtractor subtitleExtractor, CuesWithTiming cuesWithTiming) {
        subtitleExtractor.getClass();
        Sample sample = new Sample(cuesWithTiming.startTimeUs, subtitleExtractor.cueEncoder.encode(cuesWithTiming.cues, cuesWithTiming.durationUs));
        subtitleExtractor.samples.add(sample);
        long j = subtitleExtractor.seekTimeUs;
        if (j != -9223372036854775807L && cuesWithTiming.startTimeUs < j) {
            return;
        }
        subtitleExtractor.writeToOutput(sample);
    }

    private void parseAndWriteToOutput() throws IOException {
        SubtitleParser.OutputOptions allCues;
        try {
            long j = this.seekTimeUs;
            if (j != -9223372036854775807L) {
                allCues = SubtitleParser.OutputOptions.cuesAfterThenRemainingCuesBefore(j);
            } else {
                allCues = SubtitleParser.OutputOptions.allCues();
            }
            this.subtitleParser.parse(this.subtitleData, 0, this.bytesRead, allCues, new Consumer() { // from class: androidx.media3.extractor.text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    SubtitleExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SubtitleExtractor.this, (CuesWithTiming) obj);
                }
            });
            Collections.sort(this.samples);
            this.timestamps = new long[this.samples.size()];
            for (int i = 0; i < this.samples.size(); i++) {
                this.timestamps[i] = this.samples.get(i).timeUs;
            }
            this.subtitleData = Util.EMPTY_BYTE_ARRAY;
        } catch (RuntimeException e) {
            throw ParserException.createForMalformedContainer("SubtitleParser failed.", e);
        }
    }

    private boolean readFromInput(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = this.subtitleData;
        if (bArr.length == this.bytesRead) {
            this.subtitleData = Arrays.copyOf(bArr, bArr.length + 1024);
        }
        byte[] bArr2 = this.subtitleData;
        int i = this.bytesRead;
        int read = extractorInput.read(bArr2, i, bArr2.length - i);
        if (read != -1) {
            this.bytesRead += read;
        }
        long length = extractorInput.getLength();
        if ((length != -1 && this.bytesRead == length) || read == -1) {
            return true;
        }
        return false;
    }

    private boolean skipInput(ExtractorInput extractorInput) throws IOException {
        int i;
        if (extractorInput.getLength() != -1) {
            i = Ints.checkedCast(extractorInput.getLength());
        } else {
            i = 1024;
        }
        if (extractorInput.skip(i) == -1) {
            return true;
        }
        return false;
    }

    private void writeToOutput() {
        long j = this.seekTimeUs;
        for (int binarySearchFloor = j == -9223372036854775807L ? 0 : Util.binarySearchFloor(this.timestamps, j, true, true); binarySearchFloor < this.samples.size(); binarySearchFloor++) {
            writeToOutput(this.samples.get(binarySearchFloor));
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public /* synthetic */ List getSniffFailureDetails() {
        return androidx.media3.extractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // androidx.media3.extractor.Extractor
    public /* synthetic */ Extractor getUnderlyingImplementation() {
        return androidx.media3.extractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        boolean z;
        if (this.state == 0) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkState(z);
        TrackOutput track = extractorOutput.track(0, 3);
        this.trackOutput = track;
        track.format(this.format);
        extractorOutput.endTracks();
        extractorOutput.seekMap(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.state = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z;
        int i;
        int i2 = this.state;
        if (i2 != 0 && i2 != 5) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkState(z);
        if (this.state == 1) {
            if (extractorInput.getLength() != -1) {
                i = Ints.checkedCast(extractorInput.getLength());
            } else {
                i = 1024;
            }
            if (i > this.subtitleData.length) {
                this.subtitleData = new byte[i];
            }
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && readFromInput(extractorInput)) {
            parseAndWriteToOutput();
            this.state = 4;
        }
        if (this.state == 3 && skipInput(extractorInput)) {
            writeToOutput();
            this.state = 4;
        }
        if (this.state != 4) {
            return 0;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleParser.reset();
        this.state = 5;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        boolean z;
        int i = this.state;
        if (i != 0 && i != 5) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkState(z);
        this.seekTimeUs = j2;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return true;
    }

    private void writeToOutput(Sample sample) {
        Assertions.checkStateNotNull(this.trackOutput);
        int length = sample.data.length;
        this.scratchSampleArray.reset(sample.data);
        this.trackOutput.sampleData(this.scratchSampleArray, length);
        this.trackOutput.sampleMetadata(sample.timeUs, 1, length, 0, null);
    }
}
