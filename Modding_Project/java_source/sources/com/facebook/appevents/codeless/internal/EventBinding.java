package com.facebook.appevents.codeless.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\"\u0018\u0000 +2\u00020\u0001:\u0003,+-B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\t\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001f\u0010\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010!R\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b#\u0010\u0014\u001a\u0004\b$\u0010\u0016R\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b%\u0010\u0014\u001a\u0004\b&\u0010\u0016R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b'\u0010\u0014\u001a\u0004\b\u0013\u0010\u0016R\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020\n0\t8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010(R\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00020\f0\t8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010(¨\u0006."}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding;", "", "", "eventName", "Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", FirebaseAnalytics.Param.METHOD, "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "type", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "", "Lcom/facebook/appevents/codeless/internal/PathComponent;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lcom/facebook/appevents/codeless/internal/ParameterComponent;", "parameters", "componentId", "pathType", "activityName", "<init>", "(Ljava/lang/String;Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", "getMethod", "()Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "getType", "()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getAppVersion", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "getComponentId", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "getPathType", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "viewPath", "viewParameters", "Companion", "ActionType", "MappingMethod", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class EventBinding {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6314Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6315Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6316Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ParameterComponent> f6317Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<PathComponent> f6318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ActionType f6320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MappingMethod f6321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "", "(Ljava/lang/String;I)V", "CLICK", "SELECTED", "TEXT_CHANGED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum ActionType {
        CLICK,
        SELECTED,
        TEXT_CHANGED;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ActionType[] valuesCustom() {
            ActionType[] valuesCustom = values();
            return (ActionType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding$Companion;", "", "<init>", "()V", "Lorg/json/JSONArray;", "array", "", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)Ljava/util/List;", "Lorg/json/JSONObject;", "mapping", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lcom/facebook/appevents/codeless/internal/EventBinding;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final List<EventBinding> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                try {
                    int length = jSONArray.length();
                    if (length > 0) {
                        int i = 0;
                        while (true) {
                            int i2 = i + 1;
                            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONArray.getJSONObject(i)));
                            if (i2 >= length) {
                                break;
                            }
                            i = i2;
                        }
                    }
                } catch (IllegalArgumentException | JSONException unused) {
                }
            }
            return arrayList;
        }

        @JvmStatic
        @NotNull
        public final EventBinding Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            int length;
            String string = jSONObject.getString(DbParams.KEY_CHANNEL_EVENT_NAME);
            String string2 = jSONObject.getString(FirebaseAnalytics.Param.METHOD);
            Locale locale = Locale.ENGLISH;
            MappingMethod valueOf = MappingMethod.valueOf(string2.toUpperCase(locale));
            ActionType valueOf2 = ActionType.valueOf(jSONObject.getString("event_type").toUpperCase(locale));
            String string3 = jSONObject.getString("app_version");
            JSONArray jSONArray = jSONObject.getJSONArray(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
            ArrayList arrayList = new ArrayList();
            int length2 = jSONArray.length();
            if (length2 > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(new PathComponent(jSONArray.getJSONObject(i)));
                    if (i2 >= length2) {
                        break;
                    }
                    i = i2;
                }
            }
            String optString = jSONObject.optString("path_type", "absolute");
            JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
            int i3 = 0;
            ArrayList arrayList2 = new ArrayList();
            if (optJSONArray != null && (length = optJSONArray.length()) > 0) {
                while (true) {
                    int i4 = i3 + 1;
                    arrayList2.add(new ParameterComponent(optJSONArray.getJSONObject(i3)));
                    if (i4 >= length) {
                        break;
                    }
                    i3 = i4;
                }
            }
            return new EventBinding(string, valueOf, valueOf2, string3, arrayList, arrayList2, jSONObject.optString("component_id"), optString, jSONObject.optString("activity_name"));
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", "", "(Ljava/lang/String;I)V", "MANUAL", "INFERENCE", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum MappingMethod {
        MANUAL,
        INFERENCE;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static MappingMethod[] valuesCustom() {
            MappingMethod[] valuesCustom = values();
            return (MappingMethod[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    public EventBinding(@NotNull String str, @NotNull MappingMethod mappingMethod, @NotNull ActionType actionType, @NotNull String str2, @NotNull List<PathComponent> list, @NotNull List<ParameterComponent> list2, @NotNull String str3, @NotNull String str4, @NotNull String str5) {
        this.f6322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mappingMethod;
        this.f6320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = actionType;
        this.f6319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f6318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f6317Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = list2;
        this.f6316Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f6315Wwwwwwwwwwwwwwwwwwwwwwwwwww = str4;
        this.f6314Wwwwwwwwwwwwwwwwwwwwwwwwww = str5;
    }

    @NotNull
    public final List<PathComponent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableList(this.f6318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public final List<ParameterComponent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableList(this.f6317Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6314Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
