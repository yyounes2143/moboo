package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/google/firebase/sessions/InstallationId;", "", "fid", "", "authToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getFid", "()Ljava/lang/String;", "getAuthToken", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class InstallationId {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String authToken;
    @NotNull
    private final String fid;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/google/firebase/sessions/InstallationId$Companion;", "", "<init>", "()V", "create", "Lcom/google/firebase/sessions/InstallationId;", "firebaseInstallations", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "(Lcom/google/firebase/installations/FirebaseInstallationsApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:(6:11|12|13|(1:15)|16|17)(2:20|21))(2:22|23))(3:30|31|(2:33|28))|24|25|26))|36|6|7|(0)(0)|24|25|26) */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
            r9 = r8;
            r8 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
            if (r9 != r1) goto L13;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
        /* JADX WARN: Type inference failed for: r8v14 */
        /* JADX WARN: Type inference failed for: r8v15 */
        /* JADX WARN: Type inference failed for: r8v6 */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object create(@org.jetbrains.annotations.NotNull com.google.firebase.installations.FirebaseInstallationsApi r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super com.google.firebase.sessions.InstallationId> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof com.google.firebase.sessions.InstallationId$Companion$create$1
                if (r0 == 0) goto L13
                r0 = r9
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = (com.google.firebase.sessions.InstallationId$Companion$create$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = new com.google.firebase.sessions.InstallationId$Companion$create$1
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                java.lang.String r5 = ""
                if (r2 == 0) goto L42
                if (r2 == r4) goto L3a
                if (r2 != r3) goto L32
                java.lang.Object r8 = r0.L$0
                java.lang.String r8 = (java.lang.String) r8
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L76
                goto L70
            L32:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L3a:
                java.lang.Object r8 = r0.L$0
                com.google.firebase.installations.FirebaseInstallationsApi r8 = (com.google.firebase.installations.FirebaseInstallationsApi) r8
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L5f
                goto L55
            L42:
                kotlin.ResultKt.throwOnFailure(r9)
                r9 = 0
                com.google.android.gms.tasks.Task r9 = r8.getToken(r9)     // Catch: java.lang.Exception -> L5f
                r0.L$0 = r8     // Catch: java.lang.Exception -> L5f
                r0.label = r4     // Catch: java.lang.Exception -> L5f
                java.lang.Object r9 = kotlinx.coroutines.tasks.TasksKt.await(r9, r0)     // Catch: java.lang.Exception -> L5f
                if (r9 != r1) goto L55
                goto L6f
            L55:
                com.google.firebase.installations.InstallationTokenResult r9 = (com.google.firebase.installations.InstallationTokenResult) r9     // Catch: java.lang.Exception -> L5f
                java.lang.String r9 = r9.getToken()     // Catch: java.lang.Exception -> L5f
                r6 = r9
                r9 = r8
                r8 = r6
                goto L61
            L5f:
                r9 = r8
                r8 = r5
            L61:
                com.google.android.gms.tasks.Task r9 = r9.getId()     // Catch: java.lang.Exception -> L76
                r0.L$0 = r8     // Catch: java.lang.Exception -> L76
                r0.label = r3     // Catch: java.lang.Exception -> L76
                java.lang.Object r9 = kotlinx.coroutines.tasks.TasksKt.await(r9, r0)     // Catch: java.lang.Exception -> L76
                if (r9 != r1) goto L70
            L6f:
                return r1
            L70:
                java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> L76
                if (r9 != 0) goto L75
                goto L76
            L75:
                r5 = r9
            L76:
                com.google.firebase.sessions.InstallationId r9 = new com.google.firebase.sessions.InstallationId
                r0 = 0
                r9.<init>(r5, r8, r0)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.InstallationId.Companion.create(com.google.firebase.installations.FirebaseInstallationsApi, kotlin.coroutines.Continuation):java.lang.Object");
        }

        private Companion() {
        }
    }

    public /* synthetic */ InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    @NotNull
    public final String getAuthToken() {
        return this.authToken;
    }

    @NotNull
    public final String getFid() {
        return this.fid;
    }

    private InstallationId(String str, String str2) {
        this.fid = str;
        this.authToken = str2;
    }
}
