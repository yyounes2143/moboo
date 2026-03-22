package com.google.android.play.core.integrity;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface StandardIntegrityManager {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static abstract class PrepareIntegrityTokenRequest {

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public static abstract class Builder {
            public abstract PrepareIntegrityTokenRequest build();

            public abstract Builder setCloudProjectNumber(long j);
        }

        public static Builder builder() {
            c cVar = new c();
            cVar.a(0);
            return cVar;
        }

        public abstract int a();

        public abstract long b();
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static abstract class StandardIntegrityToken {
        public abstract Task<Integer> showDialog(Activity activity, int i);

        public abstract String token();
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface StandardIntegrityTokenProvider {
        Task<StandardIntegrityToken> request(StandardIntegrityTokenRequest standardIntegrityTokenRequest);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static abstract class StandardIntegrityTokenRequest {

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public static abstract class Builder {
            public abstract StandardIntegrityTokenRequest build();

            public abstract Builder setRequestHash(@Nullable String str);
        }

        public static Builder builder() {
            return new f();
        }

        @Nullable
        public abstract String a();
    }

    Task<StandardIntegrityTokenProvider> prepareIntegrityToken(PrepareIntegrityTokenRequest prepareIntegrityTokenRequest);
}
