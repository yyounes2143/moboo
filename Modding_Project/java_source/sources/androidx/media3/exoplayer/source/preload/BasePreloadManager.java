package androidx.media3.exoplayer.source.preload;

import android.os.Handler;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.TargetPreloadStatusControl;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public abstract class BasePreloadManager<T> {
    private final MediaSource.Factory mediaSourceFactory;
    protected final Comparator<T> rankingDataComparator;
    private final TargetPreloadStatusControl<T> targetPreloadStatusControl;
    @Nullable
    @GuardedBy("lock")
    private TargetPreloadStatusControl.PreloadStatus targetPreloadStatusOfCurrentPreloadingSource;
    private final Object lock = new Object();
    private final Map<MediaItem, BasePreloadManager<T>.MediaSourceHolder> mediaItemMediaSourceHolderMap = new HashMap();
    private final Handler startPreloadingHandler = Util.createHandlerForCurrentOrMainLooper();
    @GuardedBy("lock")
    private final PriorityQueue<BasePreloadManager<T>.MediaSourceHolder> sourceHolderPriorityQueue = new PriorityQueue<>();

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class BuilderBase<T> {
        protected final MediaSource.Factory mediaSourceFactory;
        protected final Comparator<T> rankingDataComparator;
        protected final TargetPreloadStatusControl<T> targetPreloadStatusControl;

        public BuilderBase(Comparator<T> comparator, TargetPreloadStatusControl<T> targetPreloadStatusControl, MediaSource.Factory factory) {
            this.rankingDataComparator = comparator;
            this.targetPreloadStatusControl = targetPreloadStatusControl;
            this.mediaSourceFactory = factory;
        }

        public abstract BasePreloadManager<T> build();
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public final class MediaSourceHolder implements Comparable<BasePreloadManager<T>.MediaSourceHolder> {
        public final MediaSource mediaSource;
        public final T rankingData;
        public final long startPositionUs;

        public MediaSourceHolder(BasePreloadManager basePreloadManager, MediaSource mediaSource, T t) {
            this(mediaSource, t, -9223372036854775807L);
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((MediaSourceHolder) ((MediaSourceHolder) obj));
        }

        public MediaSourceHolder(MediaSource mediaSource, T t, long j) {
            this.mediaSource = mediaSource;
            this.rankingData = t;
            this.startPositionUs = j;
        }

        public int compareTo(BasePreloadManager<T>.MediaSourceHolder mediaSourceHolder) {
            return BasePreloadManager.this.rankingDataComparator.compare(this.rankingData, mediaSourceHolder.rankingData);
        }
    }

    public BasePreloadManager(Comparator<T> comparator, TargetPreloadStatusControl<T> targetPreloadStatusControl, MediaSource.Factory factory) {
        this.rankingDataComparator = comparator;
        this.targetPreloadStatusControl = targetPreloadStatusControl;
        this.mediaSourceFactory = factory;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BasePreloadManager basePreloadManager, MediaSource mediaSource) {
        synchronized (basePreloadManager.lock) {
            try {
                if (!basePreloadManager.sourceHolderPriorityQueue.isEmpty() && ((MediaSourceHolder) Assertions.checkNotNull(basePreloadManager.sourceHolderPriorityQueue.peek())).mediaSource == mediaSource) {
                    do {
                        basePreloadManager.sourceHolderPriorityQueue.poll();
                        if (basePreloadManager.sourceHolderPriorityQueue.isEmpty()) {
                            break;
                        }
                    } while (!basePreloadManager.maybeStartPreloadNextSource());
                }
            } finally {
            }
        }
    }

    @GuardedBy("lock")
    private boolean maybeStartPreloadNextSource() {
        if (shouldStartPreloadingNextSource()) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.checkNotNull(this.sourceHolderPriorityQueue.peek());
            TargetPreloadStatusControl.PreloadStatus targetPreloadStatus = this.targetPreloadStatusControl.getTargetPreloadStatus(mediaSourceHolder.rankingData);
            this.targetPreloadStatusOfCurrentPreloadingSource = targetPreloadStatus;
            if (targetPreloadStatus != null) {
                preloadSourceInternal(mediaSourceHolder.mediaSource, mediaSourceHolder.startPositionUs);
                return true;
            }
            clearSourceInternal(mediaSourceHolder.mediaSource);
            return false;
        }
        return false;
    }

    public final void add(MediaItem mediaItem, T t) {
        add(this.mediaSourceFactory.createMediaSource(mediaItem), (MediaSource) t);
    }

    public abstract void clearSourceInternal(MediaSource mediaSource);

    @Nullable
    public final MediaSource getMediaSource(MediaItem mediaItem) {
        if (!this.mediaItemMediaSourceHolderMap.containsKey(mediaItem)) {
            return null;
        }
        return this.mediaItemMediaSourceHolderMap.get(mediaItem).mediaSource;
    }

    public final int getSourceCount() {
        return this.mediaItemMediaSourceHolderMap.size();
    }

    @Nullable
    public final TargetPreloadStatusControl.PreloadStatus getTargetPreloadStatus(MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                if (!this.sourceHolderPriorityQueue.isEmpty() && ((MediaSourceHolder) Assertions.checkNotNull(this.sourceHolderPriorityQueue.peek())).mediaSource == mediaSource) {
                    return this.targetPreloadStatusOfCurrentPreloadingSource;
                }
                return null;
            } finally {
            }
        }
    }

    public final void invalidate() {
        synchronized (this.lock) {
            try {
                this.sourceHolderPriorityQueue.clear();
                this.sourceHolderPriorityQueue.addAll(this.mediaItemMediaSourceHolderMap.values());
                while (!this.sourceHolderPriorityQueue.isEmpty() && !maybeStartPreloadNextSource()) {
                    this.sourceHolderPriorityQueue.poll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onPreloadCompleted(final MediaSource mediaSource) {
        this.startPreloadingHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                BasePreloadManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BasePreloadManager.this, mediaSource);
            }
        });
    }

    public abstract void preloadSourceInternal(MediaSource mediaSource, long j);

    public final void release() {
        reset();
        releaseInternal();
    }

    public abstract void releaseSourceInternal(MediaSource mediaSource);

    public final boolean remove(MediaItem mediaItem) {
        if (this.mediaItemMediaSourceHolderMap.containsKey(mediaItem)) {
            MediaSource mediaSource = this.mediaItemMediaSourceHolderMap.get(mediaItem).mediaSource;
            this.mediaItemMediaSourceHolderMap.remove(mediaItem);
            releaseSourceInternal(mediaSource);
            return true;
        }
        return false;
    }

    public final void reset() {
        for (BasePreloadManager<T>.MediaSourceHolder mediaSourceHolder : this.mediaItemMediaSourceHolderMap.values()) {
            releaseSourceInternal(mediaSourceHolder.mediaSource);
        }
        this.mediaItemMediaSourceHolderMap.clear();
        synchronized (this.lock) {
            this.sourceHolderPriorityQueue.clear();
            this.targetPreloadStatusOfCurrentPreloadingSource = null;
        }
    }

    public boolean shouldStartPreloadingNextSource() {
        return true;
    }

    public final void add(MediaSource mediaSource, T t) {
        MediaSource createMediaSourceForPreloading = createMediaSourceForPreloading(mediaSource);
        this.mediaItemMediaSourceHolderMap.put(createMediaSourceForPreloading.getMediaItem(), new MediaSourceHolder(this, createMediaSourceForPreloading, t));
    }

    public final boolean remove(MediaSource mediaSource) {
        MediaItem mediaItem = mediaSource.getMediaItem();
        if (this.mediaItemMediaSourceHolderMap.containsKey(mediaItem) && mediaSource == this.mediaItemMediaSourceHolderMap.get(mediaItem).mediaSource) {
            this.mediaItemMediaSourceHolderMap.remove(mediaItem);
            releaseSourceInternal(mediaSource);
            return true;
        }
        return false;
    }

    public void releaseInternal() {
    }

    public MediaSource createMediaSourceForPreloading(MediaSource mediaSource) {
        return mediaSource;
    }
}
