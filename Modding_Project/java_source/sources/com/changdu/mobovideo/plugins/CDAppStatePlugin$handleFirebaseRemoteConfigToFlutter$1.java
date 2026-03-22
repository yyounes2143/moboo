package com.changdu.mobovideo.plugins;

import com.google.firebase.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.RemoteConfigKt;
import io.flutter.plugin.common.MethodChannel;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1", f = "CDAppStatePlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ CDAppStatePlugin this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1(CDAppStatePlugin cDAppStatePlugin, Continuation<? super CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1> continuation) {
        super(2, continuation);
        this.this$0 = cDAppStatePlugin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MethodChannel methodChannel;
        Map Wwwwwwwwwwwwwwwwwww2;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
            methodChannel = this.this$0.f5596Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (methodChannel != null) {
                Wwwwwwwwwwwwwwwwwww2 = this.this$0.Wwwwwwwwwwwwwwwwwww(remoteConfig.getAll());
                methodChannel.invokeMethod("updateRemoteConfig", Wwwwwwwwwwwwwwwwwww2);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
