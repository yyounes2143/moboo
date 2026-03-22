package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.PriorityTaskManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class CacheUtil {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class CachingCounters {
        public volatile long alreadyCachedBytes;
        public volatile long contentLength = -1;
        public volatile long newlyCachedBytes;

        public long totalCachedBytes() {
            return this.alreadyCachedBytes + this.newlyCachedBytes;
        }
    }

    private CacheUtil() {
    }

    public static void cache(DataSpec dataSpec, Cache cache, DataSource dataSource, @Nullable CachingCounters cachingCounters, @Nullable AtomicBoolean atomicBoolean) throws IOException, InterruptedException {
        cache(dataSpec, cache, new CacheDataSource(cache, dataSource), new byte[131072], null, 0, cachingCounters, atomicBoolean, false);
    }

    public static String generateKey(Uri uri) {
        return uri.toString();
    }

    public static void getCached(DataSpec dataSpec, Cache cache, CachingCounters cachingCounters) {
        long j;
        String key = getKey(dataSpec);
        long j2 = dataSpec.absoluteStreamPosition;
        long j3 = dataSpec.length;
        Cache cache2 = cache;
        if (j3 == -1) {
            j3 = cache2.getContentLength(key);
        }
        cachingCounters.contentLength = j3;
        cachingCounters.alreadyCachedBytes = 0L;
        cachingCounters.newlyCachedBytes = 0L;
        long j4 = j3;
        while (j4 != 0) {
            int i = (j4 > (-1L) ? 1 : (j4 == (-1L) ? 0 : -1));
            if (i != 0) {
                j = j4;
            } else {
                j = Long.MAX_VALUE;
            }
            long cachedLength = cache2.getCachedLength(key, j2, j);
            if (cachedLength > 0) {
                cachingCounters.alreadyCachedBytes += cachedLength;
            } else {
                cachedLength = -cachedLength;
                if (cachedLength == Long.MAX_VALUE) {
                    return;
                }
            }
            j2 += cachedLength;
            if (i == 0) {
                cachedLength = 0;
            }
            j4 -= cachedLength;
            cache2 = cache;
        }
    }

    public static String getKey(DataSpec dataSpec) {
        String str = dataSpec.key;
        if (str != null) {
            return str;
        }
        return generateKey(dataSpec.uri);
    }

    private static long readAndDiscard(DataSpec dataSpec, long j, long j2, DataSource dataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i, CachingCounters cachingCounters) throws IOException, InterruptedException {
        int length;
        DataSpec dataSpec2 = dataSpec;
        while (true) {
            if (priorityTaskManager != null) {
                priorityTaskManager.proceed(i);
            }
            try {
                try {
                    if (!Thread.interrupted()) {
                        DataSpec dataSpec3 = new DataSpec(dataSpec2.uri, dataSpec2.postBody, j, (dataSpec2.position + j) - dataSpec2.absoluteStreamPosition, -1L, dataSpec2.key, dataSpec2.flags | 2);
                        try {
                            long open = dataSource.open(dataSpec3);
                            if (cachingCounters.contentLength == -1 && open != -1) {
                                cachingCounters.contentLength = dataSpec3.absoluteStreamPosition + open;
                            }
                            long j3 = 0;
                            while (true) {
                                if (j3 == j2) {
                                    break;
                                } else if (!Thread.interrupted()) {
                                    if (j2 != -1) {
                                        length = (int) Math.min(bArr.length, j2 - j3);
                                    } else {
                                        length = bArr.length;
                                    }
                                    int read = dataSource.read(bArr, 0, length);
                                    if (read == -1) {
                                        if (cachingCounters.contentLength == -1) {
                                            cachingCounters.contentLength = dataSpec3.absoluteStreamPosition + j3;
                                        }
                                    } else {
                                        long j4 = read;
                                        j3 += j4;
                                        cachingCounters.newlyCachedBytes += j4;
                                    }
                                } else {
                                    throw new InterruptedException();
                                }
                            }
                            Util.closeQuietly(dataSource);
                            return j3;
                        } catch (PriorityTaskManager.PriorityTooLowException unused) {
                            dataSpec2 = dataSpec3;
                        }
                    } else {
                        throw new InterruptedException();
                    }
                } catch (Throwable th) {
                    Util.closeQuietly(dataSource);
                    throw th;
                }
            } catch (PriorityTaskManager.PriorityTooLowException unused2) {
            }
            Util.closeQuietly(dataSource);
        }
    }

    public static void remove(Cache cache, String str) {
        for (CacheSpan cacheSpan : cache.getCachedSpans(str)) {
            try {
                cache.removeSpan(cacheSpan);
            } catch (Cache.CacheException unused) {
            }
        }
    }

    public static void cache(DataSpec dataSpec, Cache cache, CacheDataSource cacheDataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i, @Nullable CachingCounters cachingCounters, @Nullable AtomicBoolean atomicBoolean, boolean z) throws IOException, InterruptedException {
        DataSpec dataSpec2 = dataSpec;
        Cache cache2 = cache;
        CachingCounters cachingCounters2 = cachingCounters;
        Assertions.checkNotNull(cacheDataSource);
        Assertions.checkNotNull(bArr);
        if (cachingCounters2 != null) {
            getCached(dataSpec2, cache2, cachingCounters2);
        } else {
            cachingCounters2 = new CachingCounters();
        }
        CachingCounters cachingCounters3 = cachingCounters2;
        String key = getKey(dataSpec2);
        long j = dataSpec2.absoluteStreamPosition;
        long j2 = dataSpec2.length;
        if (j2 == -1) {
            j2 = cache2.getContentLength(key);
        }
        long j3 = j2;
        while (true) {
            long j4 = 0;
            if (j3 == 0) {
                return;
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            int i2 = (j3 > (-1L) ? 1 : (j3 == (-1L) ? 0 : -1));
            long cachedLength = cache2.getCachedLength(key, j, i2 != 0 ? j3 : Long.MAX_VALUE);
            String str = key;
            long j5 = j;
            if (cachedLength <= 0) {
                long j6 = -cachedLength;
                if (readAndDiscard(dataSpec2, j5, j6, cacheDataSource, bArr, priorityTaskManager, i, cachingCounters3) < j6) {
                    if (z && i2 != 0) {
                        throw new EOFException();
                    }
                    return;
                }
                cachedLength = j6;
            }
            j = j5 + cachedLength;
            if (i2 != 0) {
                j4 = cachedLength;
            }
            j3 -= j4;
            dataSpec2 = dataSpec;
            cache2 = cache;
            key = str;
        }
    }
}
