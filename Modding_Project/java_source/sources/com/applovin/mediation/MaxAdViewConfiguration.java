package com.applovin.mediation;

import androidx.annotation.NonNull;
import com.applovin.impl.mediation.MaxAdViewConfigurationImpl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class MaxAdViewConfiguration {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum AdaptiveType {
        NONE("none"),
        ANCHORED("anchored"),
        INLINE("inline");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3836a;

        AdaptiveType(String str) {
            this.f3836a = str;
        }

        @Override // java.lang.Enum
        @NonNull
        public String toString() {
            return this.f3836a;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Builder {
        MaxAdViewConfiguration build();

        Builder setAdaptiveType(AdaptiveType adaptiveType);

        Builder setAdaptiveWidth(int i);

        Builder setInlineMaximumHeight(int i);
    }

    public static Builder builder() {
        return new MaxAdViewConfigurationImpl.BuilderImpl();
    }

    public abstract AdaptiveType getAdaptiveType();

    public abstract int getAdaptiveWidth();

    public abstract int getInlineMaximumHeight();
}
