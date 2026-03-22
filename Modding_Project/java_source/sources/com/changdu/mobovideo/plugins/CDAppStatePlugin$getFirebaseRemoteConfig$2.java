package com.changdu.mobovideo.plugins;

import com.changdu.mobovideo.utils.CoroutineUtil;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.ConfigUpdate;
import com.google.firebase.remoteconfig.ConfigUpdateListener;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"com/changdu/mobovideo/plugins/CDAppStatePlugin$getFirebaseRemoteConfig$2", "Lcom/google/firebase/remoteconfig/ConfigUpdateListener;", "onUpdate", "", "configUpdate", "Lcom/google/firebase/remoteconfig/ConfigUpdate;", "onError", "error", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDAppStatePlugin$getFirebaseRemoteConfig$2 implements ConfigUpdateListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ CDAppStatePlugin f5597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ FirebaseRemoteConfig f5598Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CDAppStatePlugin$getFirebaseRemoteConfig$2(FirebaseRemoteConfig firebaseRemoteConfig, CDAppStatePlugin cDAppStatePlugin) {
        this.f5598Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = firebaseRemoteConfig;
        this.f5597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cDAppStatePlugin;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CDAppStatePlugin cDAppStatePlugin, FirebaseRemoteConfig firebaseRemoteConfig, Task task) {
        cDAppStatePlugin.Wwwwwwwwwwwwwwwwwwwww();
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$getFirebaseRemoteConfig$2$onUpdate$1$1(firebaseRemoteConfig, cDAppStatePlugin, null), 3, null);
    }

    @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
    public void onUpdate(ConfigUpdate configUpdate) {
        Task<Boolean> activate = this.f5598Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.activate();
        final CDAppStatePlugin cDAppStatePlugin = this.f5597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        final FirebaseRemoteConfig firebaseRemoteConfig = this.f5598Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        activate.addOnCompleteListener(new OnCompleteListener() { // from class: com.changdu.mobovideo.plugins.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CDAppStatePlugin$getFirebaseRemoteConfig$2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CDAppStatePlugin.this, firebaseRemoteConfig, task);
            }
        });
    }

    @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
    public void onError(FirebaseRemoteConfigException firebaseRemoteConfigException) {
    }
}
