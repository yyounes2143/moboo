package com.applovin.impl.sdk;

import android.os.Bundle;
import android.view.View;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.j0;
import com.applovin.impl.l3;
import com.applovin.impl.l4;
import com.applovin.impl.q2;
import com.applovin.impl.q7;
import com.applovin.impl.r5;
import com.applovin.impl.s2;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.sdk.network.d;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t2;
import com.applovin.impl.u2;
import com.applovin.impl.u6;
import com.applovin.impl.w4;
import com.applovin.impl.y2;
import com.applovin.impl.z6;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.rtmp.TXVodConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class j implements AppLovinCommunicatorSubscriber, AppLovinCommunicatorPublisher {

    /* renamed from: a  reason: collision with root package name */
    private final k f3685a;
    private final AppLovinCommunicator b;

    public j(k kVar) {
        this.f3685a = kVar;
        AppLovinCommunicator appLovinCommunicator = AppLovinCommunicator.getInstance(k.o());
        this.b = appLovinCommunicator;
        if (((Boolean) kVar.a(l4.G6)).booleanValue()) {
            appLovinCommunicator.a(kVar);
            appLovinCommunicator.subscribe(this, u6.f3776a);
        }
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (b("safedk_init") && com.applovin.impl.i.c()) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3685a.i0());
            bundle.putString("applovin_random_token", this.f3685a.h0());
            bundle.putString("compass_random_token", this.f3685a.v());
            bundle.putString("device_type", AppLovinSdkUtils.isTablet(k.o()) ? "tablet" : "phone");
            bundle.putString("init_success", String.valueOf(z));
            bundle.putParcelableArrayList("installed_mediation_adapters", JsonUtils.toBundle(l3.b(this.f3685a)));
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "communicator_settings", (JSONObject) null);
            Bundle bundle2 = (Bundle) bundle.clone();
            bundle2.putString("user_id", this.f3685a.w0().e());
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "safedk_settings", new JSONObject());
            if (!((Boolean) this.f3685a.a(l4.H6)).booleanValue()) {
                JSONObject jSONObject4 = new JSONObject();
                JsonUtils.putBoolean(jSONObject4, "deactivated", true);
                JsonUtils.putJSONObject(jSONObject3, "safeDKDeactivation", jSONObject4);
            }
            bundle2.putBundle("settings", JsonUtils.toBundle(jSONObject3));
            this.f3685a.O();
            if (o.a()) {
                o O = this.f3685a.O();
                O.a("CommunicatorService", "Sending \"safedk_init\" message: " + bundle);
            }
            a(bundle2, "safedk_init");
        }
    }

    public void b(String str, String str2) {
        if (b("user_info") && com.applovin.impl.i.c()) {
            Bundle bundle = new Bundle(2);
            bundle.putString("user_id", StringUtils.emptyIfNull(str));
            bundle.putString("applovin_random_token", str2);
            a(bundle, "user_info");
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "applovin_sdk";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        long longValue;
        long longValue2;
        Map<String, Object> map;
        long j;
        int i;
        long j2;
        JSONObject jSONObject;
        Map<String, Object> map2;
        if (((Boolean) this.f3685a.a(l4.G6)).booleanValue()) {
            if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                Bundle messageData = appLovinCommunicatorMessage.getMessageData();
                Map<String, String> stringMap = BundleUtils.toStringMap(messageData.getBundle("query_params"));
                Map<String, Object> map3 = BundleUtils.toMap(messageData.getBundle("post_body"));
                Map<String, String> stringMap2 = BundleUtils.toStringMap(messageData.getBundle("headers"));
                String string = messageData.getString("id", "");
                if (!map3.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                    map3.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3685a.i0());
                }
                this.f3685a.e0().e(new d.b().d(messageData.getString("url")).a(messageData.getString(TXVodConstants.VOD_KEY_BACKUP_URL)).b(stringMap).c(map3).a(stringMap2).a(((Boolean) this.f3685a.a(l4.L4)).booleanValue()).b(string).a());
            } else if ("send_http_request_v2".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                Bundle messageData2 = appLovinCommunicatorMessage.getMessageData();
                String string2 = messageData2.getString("http_method", ShareTarget.METHOD_POST);
                if (messageData2.containsKey("timeout_sec")) {
                    longValue = TimeUnit.SECONDS.toMillis(messageData2.getLong("timeout_sec"));
                } else {
                    longValue = ((Long) this.f3685a.a(l4.b3)).longValue();
                }
                int i2 = messageData2.getInt("retry_count", ((Integer) this.f3685a.a(l4.c3)).intValue());
                if (messageData2.containsKey("retry_delay_sec")) {
                    longValue2 = TimeUnit.SECONDS.toMillis(messageData2.getLong("retry_delay_sec"));
                } else {
                    longValue2 = ((Long) this.f3685a.a(l4.d3)).longValue();
                }
                Map<String, String> stringMap3 = BundleUtils.toStringMap(messageData2.getBundle("query_params"));
                if ("GET".equalsIgnoreCase(string2)) {
                    if (messageData2.getBoolean("include_data_collector_info", true)) {
                        map2 = null;
                        stringMap3.putAll(BundleUtils.toStringMap(CollectionUtils.toBundle(this.f3685a.B().a((Map) null, false, false))));
                    } else {
                        map2 = null;
                    }
                    j = longValue;
                    i = i2;
                    j2 = longValue2;
                    map = map2;
                } else {
                    map = BundleUtils.toMap(messageData2.getBundle("post_body"));
                    if (messageData2.getBoolean("include_data_collector_info", true)) {
                        Map D = this.f3685a.B().D();
                        Map n = this.f3685a.B().n();
                        j2 = longValue2;
                        if (n.containsKey("idfv") && n.containsKey("idfv_scope")) {
                            i = i2;
                            String str = (String) n.get("idfv");
                            j = longValue;
                            Integer num = (Integer) n.get("idfv_scope");
                            num.getClass();
                            n.remove("idfv");
                            n.remove("idfv_scope");
                            D.put("idfv", str);
                            D.put("idfv_scope", num);
                        } else {
                            j = longValue;
                            i = i2;
                        }
                        D.put("server_installed_at", this.f3685a.a(l4.o));
                        D.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3685a.i0());
                        map.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, D);
                        map.put("device", n);
                    } else {
                        j = longValue;
                        i = i2;
                        j2 = longValue2;
                    }
                }
                a.C0024a a2 = com.applovin.impl.sdk.network.a.a(this.f3685a).b(messageData2.getString("url")).a(messageData2.getString(TXVodConstants.VOD_KEY_BACKUP_URL)).b(stringMap3).c(string2).a((Map) BundleUtils.toStringMap(messageData2.getBundle("headers")));
                if (map != null) {
                    jSONObject = new JSONObject(map);
                } else {
                    jSONObject = null;
                }
                this.f3685a.q0().a((w4) new j0(appLovinCommunicatorMessage.getPublisherId(), a2.a(jSONObject).c((int) j).a(i).b((int) j2).a((Object) new JSONObject()).a(messageData2.getBoolean("is_encoding_enabled", false)).a(), this.f3685a), r5.b.OTHER);
            } else if ("set_ad_request_query_params".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                this.f3685a.k().addCustomQueryParams(z6.a((Map) BundleUtils.toMap(appLovinCommunicatorMessage.getMessageData())));
            } else if ("set_ad_request_post_body".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                this.f3685a.k().setCustomPostBody(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
            } else if ("set_mediate_request_post_body_data".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                this.f3685a.X().setCustomPostBodyData(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
            }
        }
    }

    public void b(q2 q2Var, String str) {
        if (b("max_ad_events")) {
            Bundle a2 = a(q2Var);
            a2.putString("type", str);
            this.f3685a.O();
            if (o.a()) {
                o O = this.f3685a.O();
                O.a("CommunicatorService", "Sending \"max_ad_events\" message: " + a2);
            }
            a(a2, "max_ad_events");
        }
    }

    public void b(q2 q2Var) {
        if (b("max_revenue_events")) {
            Bundle a2 = a(q2Var);
            a2.putAll(JsonUtils.toBundle(q2Var.N()));
            a2.putString("country_code", this.f3685a.w().getCountryCode());
            a(a2, "max_revenue_events");
        }
    }

    public void b(List list) {
        if (b("test_mode_networks_updated")) {
            if (list == null || list.isEmpty()) {
                a(Bundle.EMPTY, "test_mode_networks_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("test_mode_networks", new ArrayList<>(list));
            a(bundle, "test_mode_networks_updated");
        }
    }

    public void a(q2 q2Var, String str) {
        if (b("ad_callback_blocked_after_hidden")) {
            Bundle a2 = a(q2Var);
            a2.putString("callback_name", str);
            a(a2, "ad_callback_blocked_after_hidden");
        }
    }

    private boolean b(String str) {
        if (((Boolean) this.f3685a.a(l4.G6)).booleanValue()) {
            return this.f3685a.c(l4.F6).contains(str) || this.b.hasSubscriber(str);
        }
        return false;
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (b("adapter_initialization_status")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str);
            bundle.putInt("init_status", initializationStatus.getCode());
            a(bundle, "adapter_initialization_status");
        }
    }

    public void a() {
        if (b("privacy_setting_updated")) {
            a(new Bundle(), "privacy_setting_updated");
        }
    }

    public void a(String str, String str2) {
        if (b("network_sdk_version_updated")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str2);
            bundle.putString("sdk_version", str);
            a(bundle, "network_sdk_version_updated");
        }
    }

    public void a(List list) {
        if (b("live_networks_updated")) {
            if (list == null || list.isEmpty()) {
                a(Bundle.EMPTY, "live_networks_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("live_networks", new ArrayList<>(list));
            a(bundle, "live_networks_updated");
        }
    }

    public void a(String str, String str2, String str3) {
        if (b("responses")) {
            String maybeConvertToIndentedString = JsonUtils.maybeConvertToIndentedString(str3, 2);
            String maybeConvertToIndentedString2 = JsonUtils.maybeConvertToIndentedString(str, 2);
            Bundle bundle = new Bundle();
            bundle.putString("request_url", str2);
            bundle.putString("request_body", maybeConvertToIndentedString);
            bundle.putString("response", maybeConvertToIndentedString2);
            a(bundle, "responses");
        }
    }

    public void a(String str, String str2, int i, Object obj, String str3, boolean z) {
        if (b("receive_http_response")) {
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putString("url", str2);
            bundle.putInt("code", i);
            bundle.putBundle("body", JsonUtils.toBundle(obj));
            bundle.putBoolean(FirebaseAnalytics.Param.SUCCESS, z);
            BundleUtils.putString("error_message", str3, bundle);
            a(bundle, "receive_http_response");
        }
    }

    public void a(Bundle bundle, String str) {
        if (b(str)) {
            this.b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this, this.f3685a.c(l4.F6).contains(str)));
        }
    }

    public boolean a(String str) {
        return u6.f3776a.contains(str);
    }

    private Bundle a(q2 q2Var) {
        View view;
        Bundle bundle = new Bundle();
        bundle.putString("id", q2Var.O());
        bundle.putString("network_name", q2Var.c());
        bundle.putString("max_ad_unit_id", q2Var.getAdUnitId());
        bundle.putString("third_party_ad_placement_id", q2Var.P());
        bundle.putString(FirebaseAnalytics.Param.AD_FORMAT, q2Var.getFormat().getLabel());
        BundleUtils.putStringIfValid(CampaignEx.JSON_KEY_CREATIVE_ID, q2Var.getCreativeId(), bundle);
        BundleUtils.putStringIfValid("adomain", q2Var.v(), bundle);
        BundleUtils.putStringIfValid("dsp_name", q2Var.getDspName(), bundle);
        if ("CUSTOM_NETWORK_SDK".equalsIgnoreCase(q2Var.c())) {
            bundle.putString("custom_sdk_network_name", q2Var.getNetworkName());
        }
        bundle.putAll(JsonUtils.toBundle(q2Var.x()));
        if (q2Var instanceof y2) {
            if (q2Var instanceof s2) {
                view = ((s2) q2Var).y();
            } else {
                if (q2Var instanceof u2) {
                    u2 u2Var = (u2) q2Var;
                    if (!u2Var.r0()) {
                        view = u2Var.l0() != null ? u2Var.l0() : u2Var.m0();
                    }
                }
                view = null;
            }
            bundle.putString("ad_view", view != null ? q7.a(view) : "N/A");
            return bundle;
        }
        if (q2Var instanceof t2) {
            Bundle bundle2 = ((t2) q2Var).j0().getBundle("applovin_ad_view_info");
            bundle.putString("ad_view", BundleUtils.getString("ad_view_address", "N/A", bundle2));
            bundle.putString("video_view", BundleUtils.getString("video_view_address", "N/A", bundle2));
        }
        return bundle;
    }
}
