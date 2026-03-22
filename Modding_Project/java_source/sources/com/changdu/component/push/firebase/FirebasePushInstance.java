package com.changdu.component.push.firebase;

import android.content.Context;
import com.changdu.component.push.base.BasePushInstance;
import com.changdu.component.push.base.PushManager;
import com.changdu.component.push.firebase.FirebasePushInstance;
import com.didi.drouter.annotation.Service;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.messaging.FirebaseMessaging;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Service(cache = 2, function = {BasePushInstance.class})
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/changdu/component/push/firebase/FirebasePushInstance;", "Lcom/changdu/component/push/base/BasePushInstance;", "()V", "getDeviceToken", "", "getPushType", "", "init", "", "context", "Landroid/content/Context;", "push-firebase_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FirebasePushInstance extends BasePushInstance {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$0(FirebasePushInstance firebasePushInstance, Task task) {
        if (task.isSuccessful()) {
            String str = (String) task.getResult();
            if (str == null) {
                str = "";
            }
            if (!StringsKt.isBlank(str)) {
                PushManager.INSTANCE.registerToken(str, firebasePushInstance.getPushType());
            }
        }
    }

    @Override // com.changdu.component.push.base.BasePushInstance
    @NotNull
    public String getDeviceToken() {
        String result;
        Task<String> token = FirebaseMessaging.getInstance().getToken();
        String result2 = token.getResult();
        if (result2 == null) {
            result2 = "";
        }
        ":getDeviceToken token: ".concat(result2);
        if (!token.isSuccessful() || (result = token.getResult()) == null) {
            return "";
        }
        return result;
    }

    @Override // com.changdu.component.push.base.BasePushInstance
    public int getPushType() {
        return 1;
    }

    @Override // com.changdu.component.push.base.BasePushInstance
    public void init(@NotNull Context context) {
        FirebaseApp.initializeApp(context);
        FirebaseMessaging.getInstance().setDeliveryMetricsExportToBigQuery(true);
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: Wwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirebasePushInstance.init$lambda$0(FirebasePushInstance.this, task);
            }
        });
    }
}
