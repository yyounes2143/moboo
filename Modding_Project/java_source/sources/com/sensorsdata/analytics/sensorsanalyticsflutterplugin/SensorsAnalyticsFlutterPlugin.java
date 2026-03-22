package com.sensorsdata.analytics.sensorsanalyticsflutterplugin;

import android.app.Activity;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataDynamicSuperProperties;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPluginPriority;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertiesFetcher;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsAnalyticsFlutterPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f10045Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f10046Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Kkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().unregisterSuperProperty((String) list.get(0));
    }

    public final void Kkkkkkkkkk(List list, MethodChannel.Result result) {
        try {
            SensorsDataAPI.sharedInstance().unbind((String) list.get(0), (String) list.get(1));
            result.success(null);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public final void Kkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().trackViewScreen((String) list.get(0), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(1)));
    }

    public final void Kkkkkkkkkkkk(List list, MethodChannel.Result result) {
        result.success(SensorsDataAPI.sharedInstance().trackTimerStart(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0))));
    }

    public final void Kkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().trackTimerResume(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0)));
    }

    public final void Kkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().trackTimerPause(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0)));
    }

    public final void Kkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().trackTimerEnd(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0)), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(1)));
    }

    public final void Kkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().trackInstallation(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0)), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(1)));
    }

    public final void Kkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().trackAppInstall(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(0)), ((Boolean) list.get(1)).booleanValue());
    }

    public final void Kkkkkkkkkkkkkkkkkk(List list) {
        try {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0));
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(1));
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && "$AppPageLeave".equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.has("$referrer")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.put("$referrer", SensorsDataAPI.sharedInstance().getLastScreenUrl());
            }
            SensorsDataAPI.sharedInstance().track(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public final void Kkkkkkkkkkkkkkkkkkk(List list, MethodChannel.Result result) {
        String obj;
        boolean z = false;
        try {
            Map map = (Map) list.get(0);
            Object obj2 = map.get("serverUrl");
            if (obj2 == null) {
                obj = "";
            } else {
                obj = obj2.toString();
            }
            SAConfigOptions sAConfigOptions = new SAConfigOptions(obj);
            Object obj3 = map.get("autotrackTypes");
            if (obj3 != null) {
                sAConfigOptions.setAutoTrackEventType(((Integer) obj3).intValue());
            }
            Object obj4 = map.get("networkTypes");
            if (obj4 != null) {
                sAConfigOptions.setNetworkTypePolicy(((Integer) obj4).intValue());
            }
            Object obj5 = map.get("flushInterval");
            if (obj5 != null) {
                sAConfigOptions.setFlushInterval(((Integer) obj5).intValue());
            }
            Object obj6 = map.get("flushBulkSize");
            if (obj6 != null) {
                sAConfigOptions.setFlushBulkSize(((Integer) obj6).intValue());
            }
            Object obj7 = map.get("enableLog");
            if (obj7 != null) {
                sAConfigOptions.enableLog(((Boolean) obj7).booleanValue());
            }
            Object obj8 = map.get("encrypt");
            if (obj8 != null) {
                sAConfigOptions.enableEncrypt(((Boolean) obj8).booleanValue());
            }
            Object obj9 = map.get("heatMap");
            if (obj9 != null) {
                sAConfigOptions.enableHeatMap(((Boolean) obj9).booleanValue());
            }
            Object obj10 = map.get("android");
            if (obj10 != null) {
                Map map2 = (Map) obj10;
                Object obj11 = map2.get("maxCacheSize");
                if (obj11 != null) {
                    sAConfigOptions.setMaxCacheSize(Long.parseLong(obj11.toString()));
                }
                Object obj12 = map2.get("jellybean");
                if (obj12 != null) {
                    z = ((Boolean) obj12).booleanValue();
                }
                Object obj13 = map2.get("subProcessFlush");
                if (obj13 != null && ((Boolean) obj13).booleanValue()) {
                    sAConfigOptions.enableSubProcessFlushData();
                }
            }
            Object obj14 = map.get("javaScriptBridge");
            if (obj14 != null && ((Boolean) obj14).booleanValue()) {
                sAConfigOptions.enableJavaScriptBridge(z);
            }
            Object obj15 = map.get("visualized");
            if (obj15 != null) {
                Map map3 = (Map) obj15;
                Object obj16 = map3.get("autoTrack");
                if (obj16 != null) {
                    sAConfigOptions.enableVisualizedAutoTrack(((Boolean) obj16).booleanValue());
                }
                Object obj17 = map3.get(SAPropertyFilter.PROPERTIES);
                if (obj17 != null) {
                    sAConfigOptions.enableVisualizedProperties(((Boolean) obj17).booleanValue());
                }
            }
            final Map map4 = (Map) map.get("globalProperties");
            if (map4 != null && map4.size() > 0) {
                sAConfigOptions.registerPropertyPlugin(new SAPropertyPlugin() { // from class: com.sensorsdata.analytics.sensorsanalyticsflutterplugin.SensorsAnalyticsFlutterPlugin.1
                    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
                    public String getName() {
                        return "SAFlutterGloblePropertyPlugin";
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
                    public SAPropertyPluginPriority priority() {
                        return SAPropertyPluginPriority.LOW;
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
                    public void properties(SAPropertiesFetcher sAPropertiesFetcher) {
                        for (Map.Entry entry : map4.entrySet()) {
                            try {
                                sAPropertiesFetcher.getProperties().put((String) entry.getKey(), entry.getValue());
                            } catch (JSONException e) {
                                SALog.printStackTrace(e);
                            }
                        }
                    }
                });
            }
            SensorsDataAPI.startWithConfigOptions(this.f10045Wwwwwwwwwwwwwwwwwwwwwwww, sAConfigOptions);
            SensorsDataAPI.sharedInstance().registerDynamicSuperProperties(new SensorsDataDynamicSuperProperties() { // from class: com.sensorsdata.analytics.sensorsanalyticsflutterplugin.SensorsAnalyticsFlutterPlugin.2
                @Override // com.sensorsdata.analytics.android.sdk.SensorsDataDynamicSuperProperties
                public JSONObject getDynamicSuperProperties() {
                    try {
                        return new JSONObject().put("rid", UUID.randomUUID().toString());
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                }
            });
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        result.success(null);
    }

    public final void Kkkkkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().setServerUrl((String) list.get(0), ((Boolean) list.get(1)).booleanValue());
    }

    public final void Kkkkkkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().setFlushNetworkPolicy(((Integer) list.get(0)).intValue());
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().setFlushInterval(((Integer) list.get(0)).intValue());
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().setFlushBulkSize(((Integer) list.get(0)).intValue());
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().removeTimer(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) list.get(0)));
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkk(List list) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(0));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        SensorsDataAPI.sharedInstance().registerSuperProperties(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(List list) {
        SensorsDataAPI.sharedInstance().profileUnsetPushId((String) list.get(0));
    }

    public final void Www(List list) {
        SensorsDataAPI.sharedInstance().profileUnset((String) list.get(0));
    }

    public final void Wwww(List list) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(0));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        SensorsDataAPI.sharedInstance().profileSetOnce(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwww(List list) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(0));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        SensorsDataAPI.sharedInstance().profileSet(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwww(List list) {
        SensorsDataAPI.sharedInstance().profilePushId((String) list.get(0), (String) list.get(1));
    }

    public final void Wwwwwww(List list) {
        SensorsDataAPI.sharedInstance().profileIncrement((String) list.get(0), (Number) list.get(1));
    }

    public final void Wwwwwwww() {
        SensorsDataAPI.sharedInstance().profileDelete();
    }

    public final void Wwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().profileAppend((String) list.get(0), new HashSet((Collection) list.get(1)));
    }

    public final void Wwwwwwwwww() {
        SensorsDataAPI.sharedInstance().logout();
    }

    public final void Wwwwwwwwwww(List list, MethodChannel.Result result) {
        try {
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(2));
            SensorsDataAPI.sharedInstance().loginWithKey((String) list.get(0), (String) list.get(1), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            result.success(null);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public final void Wwwwwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().login((String) list.get(0), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) list.get(1)));
    }

    public final void Wwwwwwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().itemSet((String) list.get(0), (String) list.get(1), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(2)));
    }

    public final void Wwwwwwwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().itemDelete((String) list.get(0), (String) list.get(1));
    }

    public final void Wwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(Boolean.valueOf(SensorsDataAPI.sharedInstance().isNetworkRequestEnable()));
    }

    public final void Wwwwwwwwwwwwwwww(List list, MethodChannel.Result result) {
        try {
            result.success(Boolean.valueOf(SensorsDataAPI.sharedInstance().isAutoTrackEventTypeIgnored(((Integer) list.get(0)).intValue())));
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public final void Wwwwwwwwwwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().identify((String) list.get(0));
    }

    public final void Wwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        JSONObject superProperties = SensorsDataAPI.sharedInstance().getSuperProperties();
        if (superProperties != null) {
            Iterator<String> keys = superProperties.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = superProperties.opt(next);
                if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (jSONArray.length() != 0) {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < jSONArray.length(); i++) {
                            arrayList.add(jSONArray.opt(i));
                        }
                        hashMap.put(next, arrayList);
                    }
                }
                hashMap.put(next, opt);
            }
            result.success(hashMap);
            return;
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        JSONObject presetProperties = SensorsDataAPI.sharedInstance().getPresetProperties();
        if (presetProperties != null) {
            Iterator<String> keys = presetProperties.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, presetProperties.opt(next));
            }
            result.success(hashMap);
            return;
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(SensorsDataAPI.sharedInstance().getLoginId());
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(Integer.valueOf(SensorsDataAPI.sharedInstance().getFlushInterval()));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(Integer.valueOf(SensorsDataAPI.sharedInstance().getFlushBulkSize()));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        String loginId = SensorsDataAPI.sharedInstance().getLoginId();
        if (!TextUtils.isEmpty(loginId)) {
            result.success(loginId);
        } else {
            result.success(SensorsDataAPI.sharedInstance().getAnonymousId());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(SensorsDataAPI.sharedInstance().getAnonymousId());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        SensorsDataAPI.sharedInstance().flush();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().enableNetworkRequest(((Boolean) list.get(0)).booleanValue());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(List list) {
        SensorsDataAPI.sharedInstance().enableLog(((Boolean) list.get(0)).booleanValue());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SensorsDataAPI.sharedInstance().deleteAll();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SensorsDataAPI.sharedInstance().clearTrackTimer();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SensorsDataAPI.sharedInstance().clearSuperProperties();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List list, MethodChannel.Result result) {
        try {
            SensorsDataAPI.sharedInstance().bind((String) list.get(0), (String) list.get(1));
            result.success(null);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (obj != null) {
            return new JSONObject((Map) obj);
        }
        SALog.d("SA.SensorsAnalyticsFlutterPlugin", "传入的属性为空");
        return null;
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map map) {
        if (map != null) {
            return new JSONObject(map);
        }
        SALog.d("SA.SensorsAnalyticsFlutterPlugin", "传入的属性为空");
        return null;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (TextUtils.isEmpty(str)) {
            SALog.d("SA.SensorsAnalyticsFlutterPlugin", "事件名为空，请检查代码");
        }
        return str;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding) {
        this.f10045Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "sensors_analytics_flutter_plugin");
        this.f10046Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
        FlutterVisual.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10046Wwwwwwwwwwwwwwwwwwwwwwwww);
        FlutterVisual.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f10045Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f10046Wwwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
        FlutterVisual.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getApplicationContext());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
        char c;
        try {
            List list = (List) methodCall.arguments;
            String str = methodCall.method;
            switch (str.hashCode()) {
                case -2031738579:
                    if (str.equals("getDistinctId")) {
                        c = '*';
                        break;
                    }
                    c = 65535;
                    break;
                case -1927283321:
                    if (str.equals("trackTimerResume")) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case -1731065051:
                    if (str.equals(Modules.Advert.METHOD_TRACK_INSTALLATION)) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case -1576361437:
                    if (str.equals("profileAppend")) {
                        c = '(';
                        break;
                    }
                    c = 65535;
                    break;
                case -1500751692:
                    if (str.equals("profileDelete")) {
                        c = ')';
                        break;
                    }
                    c = 65535;
                    break;
                case -1172513444:
                    if (str.equals("trackTimerPause")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case -1169196088:
                    if (str.equals("trackTimerStart")) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case -1142215458:
                    if (str.equals("profilePushId")) {
                        c = '+';
                        break;
                    }
                    c = 65535;
                    break;
                case -1140038764:
                    if (str.equals("unregisterSuperProperty")) {
                        c = Typography.dollar;
                        break;
                    }
                    c = 65535;
                    break;
                case -1116478559:
                    if (str.equals("getFlushBulkSize")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -1102647815:
                    if (str.equals("profileSet")) {
                        c = '!';
                        break;
                    }
                    c = 65535;
                    break;
                case -1097329270:
                    if (str.equals("logout")) {
                        c = 31;
                        break;
                    }
                    c = 65535;
                    break;
                case -1031314777:
                    if (str.equals("setFlushInterval")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -1026165330:
                    if (str.equals("isNetworkRequestEnable")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case -970050757:
                    if (str.equals("getVisualizedPropertiesConfig")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -840745386:
                    if (str.equals("unbind")) {
                        c = '/';
                        break;
                    }
                    c = 65535;
                    break;
                case -631672127:
                    if (str.equals("enableLog")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -466034239:
                    if (str.equals("trackTimerEnd")) {
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case -402423012:
                    if (str.equals(Modules.AutoTrack.METHOD_TRACK_VIEW_SCREEN)) {
                        c = ' ';
                        break;
                    }
                    c = 65535;
                    break;
                case -375431886:
                    if (str.equals("getAnonymousId")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -358737930:
                    if (str.equals("deleteAll")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case -305904298:
                    if (str.equals("getVisualizedConnectionStatus")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -304033503:
                    if (str.equals("removeTimer")) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case -135762164:
                    if (str.equals("identify")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 3023933:
                    if (str.equals("bind")) {
                        c = '.';
                        break;
                    }
                    c = 65535;
                    break;
                case 3237136:
                    if (str.equals("init")) {
                        c = '-';
                        break;
                    }
                    c = 65535;
                    break;
                case 97532676:
                    if (str.equals("flush")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case 103149417:
                    if (str.equals("login")) {
                        c = 30;
                        break;
                    }
                    c = 65535;
                    break;
                case 110621003:
                    if (str.equals("track")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 270514149:
                    if (str.equals("trackAppInstall")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 379130599:
                    if (str.equals("clearTrackTimer")) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case 735047622:
                    if (str.equals("profileIncrement")) {
                        c = '\'';
                        break;
                    }
                    c = 65535;
                    break;
                case 762114142:
                    if (str.equals("setFlushNetworkPolicy")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 800128051:
                    if (str.equals("getFlushInterval")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 873596527:
                    if (str.equals(Modules.Visual.METHOD_SEND_VISUALIZED_MESSAGE)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 884472065:
                    if (str.equals("clearSuperProperties")) {
                        c = '%';
                        break;
                    }
                    c = 65535;
                    break;
                case 935528939:
                    if (str.equals("registerSuperProperties")) {
                        c = '#';
                        break;
                    }
                    c = 65535;
                    break;
                case 998210608:
                    if (str.equals(Modules.AutoTrack.METHOD_IS_AUTOTRACK_EVENT_TYPE_IGNORED)) {
                        c = '1';
                        break;
                    }
                    c = 65535;
                    break;
                case 1048094736:
                    if (str.equals("loginWithKey")) {
                        c = '0';
                        break;
                    }
                    c = 65535;
                    break;
                case 1155718170:
                    if (str.equals("profileSetOnce")) {
                        c = '\"';
                        break;
                    }
                    c = 65535;
                    break;
                case 1214489344:
                    if (str.equals("profileUnset")) {
                        c = Typography.amp;
                        break;
                    }
                    c = 65535;
                    break;
                case 1341940970:
                    if (str.equals("setServerUrl")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1347045909:
                    if (str.equals("setFlushBulkSize")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 1379204654:
                    if (str.equals("getLoginId")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 1493674229:
                    if (str.equals("profileUnsetPushId")) {
                        c = AbstractJsonLexerKt.COMMA;
                        break;
                    }
                    c = 65535;
                    break;
                case 1535217892:
                    if (str.equals("enableNetworkRequest")) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case 1556812446:
                    if (str.equals("itemDelete")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case 1561454824:
                    if (str.equals("getPresetProperties")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1815071960:
                    if (str.equals("getSuperProperties")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 2116193359:
                    if (str.equals("itemSet")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    result.success(SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_GET_VISUAL_STATE, new Object[0]));
                    return;
                case 1:
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_SEND_VISUALIZED_MESSAGE, (String) list.get(0));
                    result.success(null);
                    return;
                case 2:
                    result.success(SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_FLUTTER_GET_APPVISUAL_CONFIG, new Object[0]));
                    return;
                case 3:
                    Kkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case 4:
                    Wwwwwwwwwwwwwwwwwww(result);
                    return;
                case 5:
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(list);
                    return;
                case 6:
                    Kkkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case 7:
                    Kkkkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case '\b':
                    Wwwwwwwwwwwwwwwwwwwww(result);
                    return;
                case '\t':
                    Wwwwwwwwwwwwwwwwwwwwww(result);
                    return;
                case '\n':
                    Kkkkkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case 11:
                    Wwwwwwwwwwwwwwwwwwwwwwww(result);
                    return;
                case '\f':
                    Wwwwwwwwwwwwwwwwwwww(result);
                    return;
                case '\r':
                    Wwwwwwwwwwwwwwwww(list);
                    return;
                case 14:
                    Kkkkkkkkkkkkkkkkk(list);
                    return;
                case 15:
                    Wwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                case 16:
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                case 17:
                    Wwwwwwwwwwwwwwwwww(result);
                    return;
                case 18:
                    Wwwwwwwwwwwwwwwwwwwwwwwwww(list);
                    return;
                case 19:
                    Wwwwwwwwwwwww(list);
                    return;
                case 20:
                    Wwwwwwwwwwwwww(list);
                    return;
                case 21:
                    Wwwwwwwwwwwwwww(result);
                    return;
                case 22:
                    Kkkkkkkkkkkkkkkkkk(list);
                    return;
                case 23:
                    Kkkkkkkkkkkkkkkk(list);
                    return;
                case 24:
                    Kkkkkkkkkkkk(list, result);
                    return;
                case 25:
                    Kkkkkkkkkkkkkk(list);
                    return;
                case 26:
                    Kkkkkkkkkkkkk(list);
                    return;
                case 27:
                    Kkkkkkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case 28:
                    Kkkkkkkkkkkkkkk(list);
                    return;
                case 29:
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                case 30:
                    Wwwwwwwwwwww(list);
                    return;
                case 31:
                    Wwwwwwwwww();
                    return;
                case ' ':
                    Kkkkkkkkkkk(list);
                    return;
                case '!':
                    Wwwww(list);
                    return;
                case '\"':
                    Wwww(list);
                    return;
                case '#':
                    Kkkkkkkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case '$':
                    Kkkkkkkkk(list);
                    return;
                case '%':
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                case '&':
                    Www(list);
                    return;
                case '\'':
                    Wwwwwww(list);
                    return;
                case '(':
                    Wwwwwwwww(list);
                    return;
                case ')':
                    Wwwwwwww();
                    return;
                case '*':
                    Wwwwwwwwwwwwwwwwwwwwwww(result);
                    return;
                case '+':
                    Wwwwww(list);
                    return;
                case ',':
                    Kkkkkkkkkkkkkkkkkkkkkkkkkk(list);
                    return;
                case '-':
                    Kkkkkkkkkkkkkkkkkkk(list, result);
                    return;
                case '.':
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, result);
                    return;
                case '/':
                    Kkkkkkkkkk(list, result);
                    return;
                case '0':
                    Wwwwwwwwwww(list, result);
                    return;
                case '1':
                    Wwwwwwwwwwwwwwww(list, result);
                    return;
                default:
                    result.notImplemented();
                    return;
            }
        } catch (Exception e) {
            SALog.d("SA.SensorsAnalyticsFlutterPlugin", e.getMessage());
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
        this.f10045Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }
}
