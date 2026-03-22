package com.changdu.component.webviewcache;

import com.appsflyer.AppsFlyerProperties;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0014\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u000bH&J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH&J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH&J@\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0014j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\tH\u0016J8\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016JH\u0010!\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J(\u0010$\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'H\u0016J\u0018\u0010)\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0011H\u0007J\u0018\u0010*\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\tH\u0016J8\u0010+\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\rH\u0016J\b\u00101\u001a\u00020\u0004H\u0016J\b\u00102\u001a\u00020\u0004H\u0016J\b\u00103\u001a\u00020\u0004H\u0016J\b\u00104\u001a\u00020\u0004H\u0016J\b\u00105\u001a\u00020\u0004H\u0016J\b\u00106\u001a\u00020\u0004H\u0016J\b\u00107\u001a\u00020\u0004H\u0016J\u0018\u00108\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00109\u001a\u00020'H\u0016J\b\u0010:\u001a\u00020\u0004H\u0016¨\u0006;"}, d2 = {"Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;", "", "()V", "closePage", "", "disableNativePullToRefresh", "enableNativePullToRefresh", "firebaseDataReport", "eventName", "", "eventParams", "", "nativeTitleBarVisible", "", "visible", "ndAction", "jsRequestParamJson", "Lorg/json/JSONObject;", "ndActionStr", "onReceiveJsBridgeRequest", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "methodName", "jsInterfaceParamsData", "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;", "openWebView", "url", "pay", "money", "itemId", "hwItemId", "paySource", "payCustomData", "paySubs", "shopItemId", "couponId", "readBook", "bookId", "chapterIndex", "", "pageIndex", "sensorsDataReport", "showBookDetail", "showBookList", AppsFlyerProperties.CHANNEL, CampaignEx.JSON_KEY_TITLE, "id", "type", "isVipArea", "showBookshelf", "showBookstore", "showPointsCenter", "showRechargeCoin", "showRechargeSignCard", "showRechargeVipsCard", "showVipMembership", "showVipPayView", "selectIndex", "showVipTask", "webview-cache_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class CDWebViewJsBridgeListener {
    public abstract void closePage();

    public abstract void firebaseDataReport(@NotNull String str, @NotNull Map<String, ? extends Object> map);

    public abstract boolean nativeTitleBarVisible(boolean z);

    public abstract void ndAction(@NotNull JSONObject jSONObject, @NotNull String str);

    @Nullable
    public abstract HashMap<String, Object> onReceiveJsBridgeRequest(@NotNull String str, @NotNull JSONObject jSONObject, @NotNull CDJsInterfaceParamsData cDJsInterfaceParamsData);

    @Deprecated(message = "不再走客户端上报神策，前端内部可以直接调用")
    public final boolean sensorsDataReport(@NotNull String str, @NotNull JSONObject jSONObject) {
        return false;
    }

    public void disableNativePullToRefresh() {
    }

    public void enableNativePullToRefresh() {
    }

    public void showBookshelf() {
    }

    public void showBookstore() {
    }

    public void showPointsCenter() {
    }

    public void showRechargeCoin() {
    }

    public void showRechargeSignCard() {
    }

    public void showRechargeVipsCard() {
    }

    public void showVipMembership() {
    }

    public void showVipTask() {
    }

    public void openWebView(@NotNull JSONObject jSONObject, @NotNull String str) {
    }

    public void showBookDetail(@NotNull JSONObject jSONObject, @NotNull String str) {
    }

    public void showVipPayView(@NotNull JSONObject jSONObject, int i) {
    }

    public void readBook(@NotNull JSONObject jSONObject, @NotNull String str, int i, int i2) {
    }

    public void pay(@NotNull JSONObject jSONObject, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5) {
    }

    public void showBookList(@NotNull JSONObject jSONObject, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, boolean z) {
    }

    public void paySubs(@NotNull JSONObject jSONObject, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7) {
    }
}
