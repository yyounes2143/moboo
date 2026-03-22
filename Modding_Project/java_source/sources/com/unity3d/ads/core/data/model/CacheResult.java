package com.unity3d.ads.core.data.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/unity3d/ads/core/data/model/CacheResult;", "", "()V", "Failure", "Success", "Lcom/unity3d/ads/core/data/model/CacheResult$Failure;", "Lcom/unity3d/ads/core/data/model/CacheResult$Success;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class CacheResult {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/unity3d/ads/core/data/model/CacheResult$Failure;", "Lcom/unity3d/ads/core/data/model/CacheResult;", "error", "Lcom/unity3d/ads/core/data/model/CacheError;", "source", "Lcom/unity3d/ads/core/data/model/CacheSource;", "(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;)V", "getError", "()Lcom/unity3d/ads/core/data/model/CacheError;", "getSource", "()Lcom/unity3d/ads/core/data/model/CacheSource;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Failure extends CacheResult {
        @NotNull
        private final CacheError error;
        @NotNull
        private final CacheSource source;

        public Failure(@NotNull CacheError cacheError, @NotNull CacheSource cacheSource) {
            super(null);
            this.error = cacheError;
            this.source = cacheSource;
        }

        public static /* synthetic */ Failure copy$default(Failure failure, CacheError cacheError, CacheSource cacheSource, int i, Object obj) {
            if ((i & 1) != 0) {
                cacheError = failure.error;
            }
            if ((i & 2) != 0) {
                cacheSource = failure.source;
            }
            return failure.copy(cacheError, cacheSource);
        }

        @NotNull
        public final CacheError component1() {
            return this.error;
        }

        @NotNull
        public final CacheSource component2() {
            return this.source;
        }

        @NotNull
        public final Failure copy(@NotNull CacheError cacheError, @NotNull CacheSource cacheSource) {
            return new Failure(cacheError, cacheSource);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) obj;
            if (this.error == failure.error && this.source == failure.source) {
                return true;
            }
            return false;
        }

        @NotNull
        public final CacheError getError() {
            return this.error;
        }

        @NotNull
        public final CacheSource getSource() {
            return this.source;
        }

        public int hashCode() {
            return (this.error.hashCode() * 31) + this.source.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(error=" + this.error + ", source=" + this.source + ')';
        }

        public /* synthetic */ Failure(CacheError cacheError, CacheSource cacheSource, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(cacheError, (i & 2) != 0 ? CacheSource.LOCAL : cacheSource);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/unity3d/ads/core/data/model/CacheResult$Success;", "Lcom/unity3d/ads/core/data/model/CacheResult;", "cachedFile", "Lcom/unity3d/ads/core/data/model/CachedFile;", "source", "Lcom/unity3d/ads/core/data/model/CacheSource;", "(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)V", "getCachedFile", "()Lcom/unity3d/ads/core/data/model/CachedFile;", "getSource", "()Lcom/unity3d/ads/core/data/model/CacheSource;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Success extends CacheResult {
        @NotNull
        private final CachedFile cachedFile;
        @NotNull
        private final CacheSource source;

        public Success(@NotNull CachedFile cachedFile, @NotNull CacheSource cacheSource) {
            super(null);
            this.cachedFile = cachedFile;
            this.source = cacheSource;
        }

        public static /* synthetic */ Success copy$default(Success success, CachedFile cachedFile, CacheSource cacheSource, int i, Object obj) {
            if ((i & 1) != 0) {
                cachedFile = success.cachedFile;
            }
            if ((i & 2) != 0) {
                cacheSource = success.source;
            }
            return success.copy(cachedFile, cacheSource);
        }

        @NotNull
        public final CachedFile component1() {
            return this.cachedFile;
        }

        @NotNull
        public final CacheSource component2() {
            return this.source;
        }

        @NotNull
        public final Success copy(@NotNull CachedFile cachedFile, @NotNull CacheSource cacheSource) {
            return new Success(cachedFile, cacheSource);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            if (Intrinsics.areEqual(this.cachedFile, success.cachedFile) && this.source == success.source) {
                return true;
            }
            return false;
        }

        @NotNull
        public final CachedFile getCachedFile() {
            return this.cachedFile;
        }

        @NotNull
        public final CacheSource getSource() {
            return this.source;
        }

        public int hashCode() {
            return (this.cachedFile.hashCode() * 31) + this.source.hashCode();
        }

        @NotNull
        public String toString() {
            return "Success(cachedFile=" + this.cachedFile + ", source=" + this.source + ')';
        }
    }

    public /* synthetic */ CacheResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CacheResult() {
    }
}
