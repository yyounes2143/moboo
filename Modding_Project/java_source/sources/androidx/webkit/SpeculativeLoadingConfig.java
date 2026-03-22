package androidx.webkit;

import androidx.annotation.IntRange;
import androidx.webkit.Profile;
/* compiled from: Proguard */
@Profile.ExperimentalUrlPrefetch
/* loaded from: classes3.dex */
public class SpeculativeLoadingConfig {
    private final int mMaxPrefetches;
    private final int mMaxPrerenders;
    private final int mPrefetchTTLSeconds;

    /* compiled from: Proguard */
    @Profile.ExperimentalUrlPrefetch
    /* loaded from: classes3.dex */
    public static final class Builder {
        private int mMaxPrefetches;
        private int mMaxPrerenders;
        private int mPrefetchTTLSeconds;

        @Profile.ExperimentalUrlPrefetch
        public SpeculativeLoadingConfig build() {
            return new SpeculativeLoadingConfig(this.mPrefetchTTLSeconds, this.mMaxPrefetches, this.mMaxPrerenders);
        }

        public Builder setMaxPrefetches(@IntRange(from = 1) int i) {
            if (i >= 1) {
                this.mMaxPrefetches = i;
                return this;
            }
            throw new IllegalArgumentException("Max prefetches must be greater than 0");
        }

        public Builder setMaxPrerenders(@IntRange(from = 1) int i) {
            if (i >= 1) {
                this.mMaxPrerenders = i;
                return this;
            }
            throw new IllegalArgumentException("Max prerenders must be greater than 0");
        }

        public Builder setPrefetchTtlSeconds(@IntRange(from = 1) int i) {
            if (i > 0) {
                this.mPrefetchTTLSeconds = i;
                return this;
            }
            throw new IllegalArgumentException("Prefetch TTL must be greater than 0");
        }
    }

    @IntRange(from = 1)
    public int getMaxPrefetches() {
        return this.mMaxPrefetches;
    }

    @IntRange(from = 1)
    @Profile.ExperimentalUrlPrefetch
    public int getMaxPrerenders() {
        return this.mMaxPrerenders;
    }

    @IntRange(from = 1)
    public int getPrefetchTtlSeconds() {
        return this.mPrefetchTTLSeconds;
    }

    private SpeculativeLoadingConfig(int i, int i2, int i3) {
        this.mPrefetchTTLSeconds = i;
        this.mMaxPrefetches = i2;
        this.mMaxPrerenders = i3;
    }
}
