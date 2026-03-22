package com.changdu.mobovideo.picture;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.changdu.mobovideo.googleengage.UserRequestCache;
import com.changdu.mobovideo.utils.ALocalCache;
import com.changdu.mobovideo.utils.AppBizDataManager;
import com.changdu.mobovideo.utils.CoroutineUtil;
import com.changdu.mobovideo.utils.GsonUtil;
import com.google.firebase.messaging.Constants;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.NotificationParams;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\r\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ%\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010!2\u0006\u0010 \u001a\u00020\u0016H\u0002¢\u0006\u0004\b\"\u0010#J\u001b\u0010%\u001a\u0004\u0018\u00010\u00012\b\u0010$\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/changdu/mobovideo/picture/PushAdapter;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "messageId", "pushMessageJsonStr", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", BidResponsed.KEY_TOKEN, "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "reason", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/content/Intent;", "intent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;)V", "Landroid/os/Bundle;", "data", "msgId", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "bundle", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Ljava/util/Map;", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Ljava/lang/Object;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPushAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushAdapter.kt\ncom/changdu/mobovideo/picture/PushAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,194:1\n1#2:195\n29#3:196\n1285#4,2:197\n1299#4,4:199\n1563#4:207\n1634#4,3:208\n11228#5:203\n11563#5,3:204\n11308#5:211\n11643#5,3:212\n*S KotlinDebug\n*F\n+ 1 PushAdapter.kt\ncom/changdu/mobovideo/picture/PushAdapter\n*L\n151#1:196\n169#1:197,2\n169#1:199,4\n179#1:207\n179#1:208,3\n178#1:203\n178#1:204,3\n182#1:211\n182#1:212,3\n*E\n"})
/* loaded from: classes3.dex */
public final class PushAdapter {
    @NotNull
    public static final PushAdapter INSTANCE = new PushAdapter();

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle, String str) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new PushAdapter$uploadFirebaseIntentData$1(bundle, null), 3, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(8:5|6|7|(1:(2:10|11)(2:22|23))(3:24|25|(1:27)(1:28))|12|(1:17)|19|20))|30|6|7|(0)(0)|12|(2:14|17)|19|20) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r6 = r7 instanceof com.changdu.mobovideo.picture.PushAdapter$touchPushService$1
            if (r6 == 0) goto L13
            r6 = r7
            com.changdu.mobovideo.picture.PushAdapter$touchPushService$1 r6 = (com.changdu.mobovideo.picture.PushAdapter$touchPushService$1) r6
            int r0 = r6.label
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r6.label = r0
            goto L18
        L13:
            com.changdu.mobovideo.picture.PushAdapter$touchPushService$1 r6 = new com.changdu.mobovideo.picture.PushAdapter$touchPushService$1
            r6.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L35
            if (r1 != r2) goto L2d
            java.lang.Object r6 = r6.L$0
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L71
            goto L57
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Throwable -> L71
            r7.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ""
            r7.element = r1     // Catch: java.lang.Throwable -> L71
            kotlinx.coroutines.CoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L71
            com.changdu.mobovideo.picture.PushAdapter$touchPushService$2 r3 = new com.changdu.mobovideo.picture.PushAdapter$touchPushService$2     // Catch: java.lang.Throwable -> L71
            r4 = 0
            r3.<init>(r7, r4)     // Catch: java.lang.Throwable -> L71
            r6.L$0 = r7     // Catch: java.lang.Throwable -> L71
            r6.label = r2     // Catch: java.lang.Throwable -> L71
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r6)     // Catch: java.lang.Throwable -> L71
            if (r6 != r0) goto L56
            return r0
        L56:
            r6 = r7
        L57:
            T r7 = r6.element     // Catch: java.lang.Throwable -> L71
            java.lang.CharSequence r7 = (java.lang.CharSequence) r7     // Catch: java.lang.Throwable -> L71
            if (r7 == 0) goto L71
            boolean r7 = kotlin.text.StringsKt.isBlank(r7)     // Catch: java.lang.Throwable -> L71
            if (r7 == 0) goto L64
            goto L71
        L64:
            com.changdu.mobovideo.VideoApplication$Companion r7 = com.changdu.mobovideo.VideoApplication.Companion     // Catch: java.lang.Throwable -> L71
            android.content.Context r7 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L71
            T r6 = r6.element     // Catch: java.lang.Throwable -> L71
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L71
            r5.Wwwwwwwwwwwwwwwwwwwwwwwwww(r7, r6)     // Catch: java.lang.Throwable -> L71
        L71:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.picture.PushAdapter.Wwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        if (StringsKt.isBlank(str)) {
            return;
        }
        TokenSyncStore.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        CDJobScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getApplicationContext(), "push_token_received");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        if (StringsKt.isBlank(str2)) {
            return;
        }
        CDJobScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getApplicationContext(), PushPayload.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2), true);
    }

    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Bundle) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Bundle) obj);
        }
        int i = 0;
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            ArrayList arrayList = new ArrayList(objArr.length);
            int length = objArr.length;
            while (i < length) {
                arrayList.add(INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr[i]));
                i++;
            }
            return arrayList;
        } else if (obj instanceof ArrayList) {
            Iterable<Object> iterable = (Iterable) obj;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            for (Object obj2 : iterable) {
                arrayList2.add(INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2));
            }
            return arrayList2;
        } else if (obj instanceof boolean[]) {
            return ArraysKt.toList((boolean[]) obj);
        } else {
            if (obj instanceof byte[]) {
                return ArraysKt.toList((byte[]) obj);
            }
            if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                ArrayList arrayList3 = new ArrayList(cArr.length);
                int length2 = cArr.length;
                while (i < length2) {
                    arrayList3.add(String.valueOf(cArr[i]));
                    i++;
                }
                return arrayList3;
            } else if (obj instanceof double[]) {
                return ArraysKt.toList((double[]) obj);
            } else {
                if (obj instanceof float[]) {
                    return ArraysKt.toList((float[]) obj);
                }
                if (obj instanceof int[]) {
                    return ArraysKt.toList((int[]) obj);
                }
                if (obj instanceof long[]) {
                    return ArraysKt.toList((long[]) obj);
                }
                if (obj instanceof short[]) {
                    return ArraysKt.toList((short[]) obj);
                }
                if (obj instanceof CharSequence) {
                    return obj.toString();
                }
                if (!(obj instanceof Number)) {
                    if (obj instanceof Boolean) {
                        return obj;
                    }
                    return obj.toString();
                }
                return obj;
            }
        }
    }

    public final UserRequestCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str;
        ALocalCache Wwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
            str = Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("userRequestCache");
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        if (StringsKt.isBlank(str)) {
            return null;
        }
        try {
            return (UserRequestCache) GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, UserRequestCache.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Intent intent) {
        Bundle extras;
        if (intent != null) {
            String action = intent.getAction();
            if (Intrinsics.areEqual("com.google.android.c2dm.intent.RECEIVE", action) || Intrinsics.areEqual(FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT, action)) {
                String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.MESSAGE_TYPE);
                if ((stringExtra == null || Intrinsics.areEqual(stringExtra, Constants.MessageTypes.MESSAGE)) && (extras = intent.getExtras()) != null) {
                    NotificationParams.isNotification(extras);
                    String string = extras.getString("moboVideoMessageId", "");
                    String string2 = extras.getString("pushmsgtype", "");
                    String string3 = extras.getString("pushid", "");
                    if (!Intrinsics.areEqual(string2, "724") && !Intrinsics.areEqual(string3, "666666")) {
                        Wwwwwwwwwwwwwwwwwwwwwwww(extras, string);
                    }
                }
            }
        }
    }

    public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
        Set<String> keySet = bundle.keySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(keySet, 10)), 16));
        for (Object obj : keySet) {
            linkedHashMap.put(obj, INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle.get((String) obj)));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
        if (r0 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        /*
            r2 = this;
            com.changdu.mobovideo.googleengage.UserRequestCache r0 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            if (r0 == 0) goto L16
            java.lang.String r0 = r0.getBaseHost()
            if (r0 == 0) goto L16
            boolean r1 = kotlin.text.StringsKt.isBlank(r0)
            if (r1 != 0) goto L13
            goto L14
        L13:
            r0 = 0
        L14:
            if (r0 != 0) goto L18
        L16:
            java.lang.String r0 = "https://videoapi-hk.cdreader.com"
        L18:
            android.net.Uri r0 = android.net.Uri.parse(r0)
            android.net.Uri$Builder r0 = r0.buildUpon()
            java.lang.String r1 = "account"
            android.net.Uri$Builder r0 = r0.appendPath(r1)
            java.lang.String r1 = "app"
            android.net.Uri$Builder r0 = r0.appendPath(r1)
            java.lang.String r1 = "binding"
            android.net.Uri$Builder r0 = r0.appendPath(r1)
            java.lang.String r1 = "iosNotifyUpload"
            android.net.Uri$Builder r0 = r0.appendPath(r1)
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.picture.PushAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():java.lang.String");
    }
}
