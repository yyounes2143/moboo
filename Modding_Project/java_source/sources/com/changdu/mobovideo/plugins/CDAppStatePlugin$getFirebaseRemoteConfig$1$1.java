package com.changdu.mobovideo.plugins;

import com.changdu.mobovideo.utils.CDAppProtect;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$getFirebaseRemoteConfig$1$1", f = "CDAppStatePlugin.kt", i = {}, l = {383}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDAppStatePlugin$getFirebaseRemoteConfig$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FirebaseRemoteConfig $remoteConfig;
    int label;
    final /* synthetic */ CDAppStatePlugin this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDAppStatePlugin$getFirebaseRemoteConfig$1$1(FirebaseRemoteConfig firebaseRemoteConfig, CDAppStatePlugin cDAppStatePlugin, Continuation<? super CDAppStatePlugin$getFirebaseRemoteConfig$1$1> continuation) {
        super(2, continuation);
        this.$remoteConfig = firebaseRemoteConfig;
        this.this$0 = cDAppStatePlugin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppStatePlugin$getFirebaseRemoteConfig$1$1(this.$remoteConfig, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            FirebaseRemoteConfig firebaseRemoteConfig = this.$remoteConfig;
            str = this.this$0.f5591Wwwwwwwwwwwwwwwwwwww;
            String string = firebaseRemoteConfig.getString(str);
            CDAppProtect cDAppProtect = CDAppProtect.INSTANCE;
            this.label = 1;
            if (cDAppProtect.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(string, true, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppStatePlugin$getFirebaseRemoteConfig$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
