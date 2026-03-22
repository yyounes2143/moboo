package com.changdu.component.push.firebase;

import android.content.Intent;
import com.changdu.component.push.base.PushManager;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.google.gson.Gson;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import j$.util.Objects;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"Lcom/changdu/component/push/firebase/CDFirebaseMessagingService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "()V", "handleIntent", "", "intent", "Landroid/content/Intent;", "onDeletedMessages", "onMessageReceived", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "onNewToken", BidResponsed.KEY_TOKEN, "", "push-firebase_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDFirebaseMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService, com.google.firebase.messaging.EnhancedIntentService
    public void handleIntent(@Nullable Intent intent) {
        super.handleIntent(intent);
        PushManager.INSTANCE.firebaseMessageHandleIntent(intent);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onDeletedMessages() {
        super.onDeletedMessages();
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(@NotNull RemoteMessage remoteMessage) {
        remoteMessage.getFrom();
        if (!remoteMessage.getData().isEmpty()) {
            try {
                Objects.toString(remoteMessage.getData());
                String json = new Gson().toJson(remoteMessage.getData());
                PushManager pushManager = PushManager.INSTANCE;
                String messageId = remoteMessage.getMessageId();
                if (messageId == null) {
                    messageId = "";
                }
                pushManager.handleReceivedPushMessage(messageId, json);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(@NotNull String str) {
        if (str.length() > 0) {
            PushManager.INSTANCE.registerToken(str, 1);
        }
    }
}
