package com.changdu.mobovideo.net;

import android.content.res.Resources;
import android.os.Build;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.os.ConfigurationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.component.httpbiz.CDHttpUtil;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.googleengage.UserRequestCache;
import com.changdu.mobovideo.utils.AppUtil;
import com.changdu.mobovideo.utils.GsonUtil;
import com.changdu.mobovideo.utils.SaltCrypto;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u0019\u0010\f\u001a\u00020\t*\u00020\t2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r\u001a/\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a?\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0019\u0010\u001f\u001a\u00020\u00012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Ljava/io/File;", "", "newName", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Ljava/lang/String;)Z", "newFile", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Ljava/io/File;)Z", "Lokhttp3/Request;", "Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "userCache", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lcom/changdu/mobovideo/googleengage/UserRequestCache;)Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "uuid", "", CampaignEx.JSON_KEY_ST_TS, "salt", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;", "langId", AppsFlyerProperties.CHANNEL, "protocolVersion", RemoteConfigConstants.RequestFieldKey.APP_ID, VungleConstants.KEY_USER_ID, "productX", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Lokhttp3/RequestBody;", "requestBody", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/RequestBody;)Ljava/lang/String;", "app_outsideRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVideoHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoHttpClient.kt\ncom/changdu/mobovideo/net/VideoHttpClientKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,542:1\n1869#2,2:543\n216#3,2:545\n*S KotlinDebug\n*F\n+ 1 VideoHttpClient.kt\ncom/changdu/mobovideo/net/VideoHttpClientKt\n*L\n421#1:543,2\n450#1:545,2\n*E\n"})
/* loaded from: classes3.dex */
public final class VideoHttpClientKt {
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBody requestBody) {
        Buffer buffer;
        Buffer buffer2 = null;
        try {
            if (requestBody == null) {
                return "";
            }
            try {
                buffer = new Buffer();
            } catch (Exception e) {
                e = e;
            }
            try {
                requestBody.writeTo(buffer);
                String Kkkkk = buffer.Kkkkk();
                try {
                    buffer.close();
                    return Kkkkk;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return Kkkkk;
                }
            } catch (Exception e3) {
                e = e3;
                buffer2 = buffer;
                e.printStackTrace();
                if (buffer2 != null) {
                    try {
                        buffer2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                return "";
            } catch (Throwable th) {
                th = th;
                buffer2 = buffer;
                if (buffer2 != null) {
                    try {
                        buffer2.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, @NotNull String str) {
        String parent = file.getParent();
        String str2 = File.separator;
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, new File(parent + str2 + str));
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, @NotNull File file2) {
        if (file2.exists()) {
            return false;
        }
        return file.renameTo(file2);
    }

    @NotNull
    public static final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, @NotNull UserRequestCache userRequestCache) {
        Request.Builder Wwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        String uuid = UUID.randomUUID().toString();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        String langId = userRequestCache.getLangId();
        String channel = userRequestCache.getChannel();
        String protocolVersion = userRequestCache.getProtocolVersion();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SaltCrypto.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(userRequestCache.getSalt());
        String userId = userRequestCache.getUserId();
        String userToken = userRequestCache.getUserToken();
        String appId = userRequestCache.getAppId();
        String productX = userRequestCache.getProductX();
        String terminalType = userRequestCache.getTerminalType();
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("nonce", uuid);
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CampaignEx.JSON_KEY_ST_TS, String.valueOf(currentTimeMillis));
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("x-verid", protocolVersion);
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("x-sign", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, uuid, currentTimeMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("clientinfo", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(langId, channel, protocolVersion, appId, userId, productX));
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("x-langid", langId);
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("accountId", userId);
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("authorization", userToken);
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("terminalType", terminalType);
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, String str, long j, String str2) {
        if (!Intrinsics.areEqual(request.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), "GET") && !Intrinsics.areEqual(request.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), ShareTarget.METHOD_POST)) {
            return "";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (Intrinsics.areEqual(request.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), "GET")) {
            for (String str3 : request.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww()) {
                String Wwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww(str3);
                if (Wwwwwwwwwwwwwwwwwww2 != null && !StringsKt.isBlank(Wwwwwwwwwwwwwwwwwww2)) {
                    linkedHashMap.put(str3, Wwwwwwwwwwwwwwwwwww2);
                }
            }
        } else {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                try {
                    JSONObject jSONObject = new JSONObject(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj = jSONObject.get(next);
                        if (!(obj instanceof JSONObject) && !(obj instanceof JSONArray) && !StringsKt.isBlank(obj.toString())) {
                            linkedHashMap.put(next, obj);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry entry : MapsKt.toSortedMap(linkedHashMap).entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            stringBuffer.append(key + "=" + value);
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        return CDHttpUtil.INSTANCE.md5(Wwwwwwwwwwwwwwwwwwwwwwwwwww2 + "salt=" + str2 + "&ts=" + j + "&nonce=" + str + "&" + ((Object) stringBuffer));
    }

    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, String str3, String str4, String str5, String str6) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("device", Build.MODEL);
            hashMap.put("device2", Build.DEVICE);
            hashMap.put("device3", Build.PRODUCT);
            hashMap.put("osver", Build.VERSION.RELEASE);
            AppUtil appUtil = AppUtil.INSTANCE;
            VideoApplication.Companion companion = VideoApplication.Companion;
            hashMap.put("appver", appUtil.Wwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            hashMap.put("corever", 1);
            hashMap.put("mt", 4);
            hashMap.put("x", str6);
            hashMap.put("appid", str4);
            hashMap.put("langid", str);
            hashMap.put("chl", str2);
            hashMap.put("androidid", appUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            hashMap.put("UniqueCdReaderId", appUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            hashMap.put("userid", str5);
            hashMap.put("utcoffset", Integer.valueOf(CDHttpUtil.INSTANCE.getUTCOffset()));
            hashMap.put("supportutctime", 1);
            hashMap.put(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
            hashMap.put("ver", str3);
            Locale locale = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0);
            if (locale == null) {
                locale = Locale.getDefault();
            }
            hashMap.put("syslanguage", locale);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap);
    }
}
