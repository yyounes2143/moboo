package com.google.firebase.sessions;

import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1", f = "SharedSessionRepository.kt", i = {}, l = {TPOptionalID.OPTION_ID_BEFORE_LONG_SEEK_AV_PTS_ALIGN_MAX_THRESHOLD_MS, 193}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class SharedSessionRepositoryImpl$appForeground$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ SessionData $sessionData;
    int label;
    final /* synthetic */ SharedSessionRepositoryImpl this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/google/firebase/sessions/SessionData;", "currentSessionData"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1", f = "SharedSessionRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<SessionData, Continuation<? super SessionData>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ SharedSessionRepositoryImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = sharedSessionRepositoryImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SessionData sessionData, Continuation<? super SessionData> continuation) {
            return ((AnonymousClass1) create(sessionData, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean isSessionExpired;
            boolean isColdStart;
            boolean isMyProcessStale;
            Map<String, ProcessData> processDataMap;
            ProcessDataManager processDataManager;
            SessionDetails sessionDetails;
            SessionFirelogPublisher sessionFirelogPublisher;
            ProcessDataManager processDataManager2;
            ProcessDataManager processDataManager3;
            ProcessDataManager processDataManager4;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                SessionData sessionData = (SessionData) this.L$0;
                isSessionExpired = this.this$0.isSessionExpired(sessionData);
                isColdStart = this.this$0.isColdStart(sessionData);
                isMyProcessStale = this.this$0.isMyProcessStale(sessionData);
                if (isColdStart) {
                    processDataManager4 = this.this$0.processDataManager;
                    processDataMap = processDataManager4.generateProcessDataMap();
                } else if (isMyProcessStale) {
                    processDataManager = this.this$0.processDataManager;
                    processDataMap = processDataManager.updateProcessDataMap(sessionData.getProcessDataMap());
                } else {
                    processDataMap = sessionData.getProcessDataMap();
                }
                if (isColdStart) {
                    sessionDetails = null;
                } else {
                    sessionDetails = sessionData.getSessionDetails();
                }
                if (!isSessionExpired && !isColdStart) {
                    if (isMyProcessStale) {
                        processDataManager3 = this.this$0.processDataManager;
                        return SessionData.copy$default(sessionData, null, null, processDataManager3.updateProcessDataMap(processDataMap), 3, null);
                    }
                    return sessionData;
                }
                SessionDetails generateNewSession = this.this$0.sessionGenerator.generateNewSession(sessionDetails);
                sessionFirelogPublisher = this.this$0.sessionFirelogPublisher;
                sessionFirelogPublisher.mayLogSession(generateNewSession);
                processDataManager2 = this.this$0.processDataManager;
                processDataManager2.onSessionGenerated();
                return sessionData.copy(generateNewSession, null, processDataMap);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedSessionRepositoryImpl$appForeground$1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, SessionData sessionData, Continuation<? super SharedSessionRepositoryImpl$appForeground$1> continuation) {
        super(2, continuation);
        this.this$0 = sharedSessionRepositoryImpl;
        this.$sessionData = sessionData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SharedSessionRepositoryImpl$appForeground$1(this.this$0, this.$sessionData, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (r10.updateData(r0, r9) == r1) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
        if (r10.notifySubscribers(r0, r3, r9) == r1) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
        return r1;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r9.label
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L21
            if (r0 == r3) goto L1a
            if (r0 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r10)
            goto L81
        L12:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1a:
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L1e
            goto L81
        L1e:
            r0 = move-exception
            r10 = r0
            goto L3b
        L21:
            kotlin.ResultKt.throwOnFailure(r10)
            com.google.firebase.sessions.SharedSessionRepositoryImpl r10 = r9.this$0     // Catch: java.lang.Exception -> L1e
            androidx.datastore.core.DataStore r10 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$getSessionDataStore$p(r10)     // Catch: java.lang.Exception -> L1e
            com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1 r0 = new com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1     // Catch: java.lang.Exception -> L1e
            com.google.firebase.sessions.SharedSessionRepositoryImpl r4 = r9.this$0     // Catch: java.lang.Exception -> L1e
            r5 = 0
            r0.<init>(r4, r5)     // Catch: java.lang.Exception -> L1e
            r9.label = r3     // Catch: java.lang.Exception -> L1e
            java.lang.Object r10 = r10.updateData(r0, r9)     // Catch: java.lang.Exception -> L1e
            if (r10 != r1) goto L81
            goto L80
        L3b:
            r10.getMessage()
            com.google.firebase.sessions.SharedSessionRepositoryImpl r10 = r9.this$0
            com.google.firebase.sessions.SessionData r0 = r9.$sessionData
            boolean r10 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$isSessionExpired(r10, r0)
            if (r10 == 0) goto L81
            com.google.firebase.sessions.SharedSessionRepositoryImpl r10 = r9.this$0
            com.google.firebase.sessions.SessionGenerator r10 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$getSessionGenerator$p(r10)
            com.google.firebase.sessions.SessionData r0 = r9.$sessionData
            com.google.firebase.sessions.SessionDetails r0 = r0.getSessionDetails()
            com.google.firebase.sessions.SessionDetails r4 = r10.generateNewSession(r0)
            com.google.firebase.sessions.SharedSessionRepositoryImpl r10 = r9.this$0
            com.google.firebase.sessions.SessionData r3 = r9.$sessionData
            r7 = 4
            r8 = 0
            r5 = 0
            r6 = 0
            com.google.firebase.sessions.SessionData r0 = com.google.firebase.sessions.SessionData.copy$default(r3, r4, r5, r6, r7, r8)
            r10.setLocalSessionData$com_google_firebase_firebase_sessions(r0)
            com.google.firebase.sessions.SharedSessionRepositoryImpl r10 = r9.this$0
            com.google.firebase.sessions.SessionFirelogPublisher r10 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$getSessionFirelogPublisher$p(r10)
            r10.mayLogSession(r4)
            com.google.firebase.sessions.SharedSessionRepositoryImpl r10 = r9.this$0
            java.lang.String r0 = r4.getSessionId()
            com.google.firebase.sessions.SharedSessionRepositoryImpl$NotificationType r3 = com.google.firebase.sessions.SharedSessionRepositoryImpl.NotificationType.FALLBACK
            r9.label = r2
            java.lang.Object r10 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$notifySubscribers(r10, r0, r3, r9)
            if (r10 != r1) goto L81
        L80:
            return r1
        L81:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SharedSessionRepositoryImpl$appForeground$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
