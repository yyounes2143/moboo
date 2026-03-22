package com.facebook.appevents.cloudbridge;

import com.facebook.LoggingBehavior;
import com.facebook.appevents.cloudbridge.AppEventType;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u000489:;B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u0007\u0010\bJC\u0010\r\u001a.\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\nj\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u0001`\f2\u0006\u0010\t\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\r\u0010\u000eJG\u0010\u0014\u001a\u00020\u00132\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0014\u0010\u0015JW\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000bH\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u008b\u0001\u0010\u001e\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u00192\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b0\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ7\u0010!\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\u001b2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000bH\u0000¢\u0006\u0004\b!\u0010\"J3\u0010#\u001a\u00020\u00132\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b#\u0010$J3\u0010%\u001a\u00020\u00132\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b%\u0010$J\u0017\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004H\u0002¢\u0006\u0004\b'\u0010(JA\u0010*\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\u001b2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b*\u0010+JQ\u0010,\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\u001b2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b0\u001bH\u0002¢\u0006\u0004\b,\u0010-J\u008f\u0001\u0010.\u001a\u00020\u00192\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000f2.\u0010\u001c\u001a*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b0\nj\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000b`\f2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000fH\u0002¢\u0006\u0004\b.\u0010/R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002000\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u00101R \u00105\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u00101R \u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002060\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b*\u00101¨\u0006<"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer;", "", "<init>", "()V", "", "field", "value", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "appEvents", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/ArrayList;", "", "userData", "appData", "Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/util/Map;Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;Ljava/lang/Object;)V", "restOfData", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;", "Lcom/facebook/appevents/cloudbridge/AppEventType;", "eventType", "", "customEvents", "eventTime", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/cloudbridge/AppEventType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;", "parameters", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "input", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "commonFields", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;)Lcom/facebook/appevents/cloudbridge/AppEventType;", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionFieldMapping;", "Ljava/util/Map;", "topLevelTransformations", "Lcom/facebook/appevents/cloudbridge/CustomEventField;", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionCustomEventFieldMapping;", "customEventTransformations", "Lcom/facebook/appevents/cloudbridge/ConversionsAPIEventName;", "standardEventTransformations", "DataProcessingParameterName", "SectionCustomEventFieldMapping", "SectionFieldMapping", "ValueTransformationType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformer {
    @NotNull
    public static final AppEventsConversionsAPITransformer INSTANCE = new AppEventsConversionsAPITransformer();
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, ConversionsAPIEventName> f6241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<CustomEventField, SectionCustomEventFieldMapping> f6242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<AppEventUserAndAppDataField, SectionFieldMapping> f6243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;", "", "rawValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawValue", "()Ljava/lang/String;", "OPTIONS", "COUNTRY", "STATE", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum DataProcessingParameterName {
        OPTIONS("data_processing_options"),
        COUNTRY("data_processing_options_country"),
        STATE("data_processing_options_state");
        
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String rawValue;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName$Companion;", "", "<init>", "()V", "", "rawValue", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final DataProcessingParameterName Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
                DataProcessingParameterName[] valuesCustom;
                for (DataProcessingParameterName dataProcessingParameterName : DataProcessingParameterName.valuesCustom()) {
                    if (Intrinsics.areEqual(dataProcessingParameterName.getRawValue(), str)) {
                        return dataProcessingParameterName;
                    }
                }
                return null;
            }

            public Companion() {
            }
        }

        DataProcessingParameterName(String str) {
            this.rawValue = str;
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static DataProcessingParameterName[] valuesCustom() {
            DataProcessingParameterName[] valuesCustom = values();
            return (DataProcessingParameterName[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @NotNull
        public final String getRawValue() {
            return this.rawValue;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0018\u001a\u0004\b\u0012\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionCustomEventFieldMapping;", "", "Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "section", "Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;", "field", "<init>", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "setSection", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;)V", "Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;", "setField", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SectionCustomEventFieldMapping {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ConversionsAPICustomEventField f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ConversionsAPISection f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SectionCustomEventFieldMapping(@Nullable ConversionsAPISection conversionsAPISection, @NotNull ConversionsAPICustomEventField conversionsAPICustomEventField) {
            this.f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = conversionsAPISection;
            this.f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = conversionsAPICustomEventField;
        }

        @Nullable
        public final ConversionsAPISection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ConversionsAPICustomEventField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SectionCustomEventFieldMapping)) {
                return false;
            }
            SectionCustomEventFieldMapping sectionCustomEventFieldMapping = (SectionCustomEventFieldMapping) obj;
            if (this.f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == sectionCustomEventFieldMapping.f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == sectionCustomEventFieldMapping.f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            ConversionsAPISection conversionsAPISection = this.f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (conversionsAPISection == null) {
                hashCode = 0;
            } else {
                hashCode = conversionsAPISection.hashCode();
            }
            return (hashCode * 31) + this.f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return "SectionCustomEventFieldMapping(section=" + this.f6245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", field=" + this.f6244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0018\u001a\u0004\b\u0012\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$SectionFieldMapping;", "", "Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "section", "Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;", "field", "<init>", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;", "setSection", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;)V", "Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;", "()Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;", "setField", "(Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SectionFieldMapping {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ConversionsAPIUserAndAppDataField f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ConversionsAPISection f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SectionFieldMapping(@NotNull ConversionsAPISection conversionsAPISection, @Nullable ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField) {
            this.f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = conversionsAPISection;
            this.f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = conversionsAPIUserAndAppDataField;
        }

        @NotNull
        public final ConversionsAPISection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final ConversionsAPIUserAndAppDataField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SectionFieldMapping)) {
                return false;
            }
            SectionFieldMapping sectionFieldMapping = (SectionFieldMapping) obj;
            if (this.f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == sectionFieldMapping.f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == sectionFieldMapping.f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
            ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField = this.f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (conversionsAPIUserAndAppDataField == null) {
                hashCode = 0;
            } else {
                hashCode = conversionsAPIUserAndAppDataField.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "SectionFieldMapping(section=" + this.f6247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", field=" + this.f6246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;", "", "(Ljava/lang/String;I)V", "ARRAY", "BOOL", "INT", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum ValueTransformationType {
        ARRAY,
        BOOL,
        INT;
        
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;", "", "<init>", "()V", "", "rawValue", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final ValueTransformationType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
                if (Intrinsics.areEqual(str, AppEventUserAndAppDataField.EXT_INFO.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(str, AppEventUserAndAppDataField.URL_SCHEMES.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(str, CustomEventField.CONTENT_IDS.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(str, CustomEventField.CONTENTS.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(str, DataProcessingParameterName.OPTIONS.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(str, AppEventUserAndAppDataField.ADV_TE.getRawValue())) {
                    return ValueTransformationType.BOOL;
                }
                if (Intrinsics.areEqual(str, AppEventUserAndAppDataField.APP_TE.getRawValue())) {
                    return ValueTransformationType.BOOL;
                }
                if (Intrinsics.areEqual(str, CustomEventField.EVENT_TIME.getRawValue())) {
                    return ValueTransformationType.INT;
                }
                return null;
            }

            public Companion() {
            }
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ValueTransformationType[] valuesCustom() {
            ValueTransformationType[] valuesCustom = values();
            return (ValueTransformationType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ValueTransformationType.valuesCustom().length];
            iArr[ValueTransformationType.ARRAY.ordinal()] = 1;
            iArr[ValueTransformationType.BOOL.ordinal()] = 2;
            iArr[ValueTransformationType.INT.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ConversionsAPISection.valuesCustom().length];
            iArr2[ConversionsAPISection.APP_DATA.ordinal()] = 1;
            iArr2[ConversionsAPISection.USER_DATA.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[AppEventType.valuesCustom().length];
            iArr3[AppEventType.MOBILE_APP_INSTALL.ordinal()] = 1;
            iArr3[AppEventType.CUSTOM.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    static {
        AppEventUserAndAppDataField appEventUserAndAppDataField = AppEventUserAndAppDataField.ANON_ID;
        ConversionsAPISection conversionsAPISection = ConversionsAPISection.USER_DATA;
        Pair pair = TuplesKt.to(appEventUserAndAppDataField, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.ANON_ID));
        Pair pair2 = TuplesKt.to(AppEventUserAndAppDataField.APP_USER_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.FB_LOGIN_ID));
        Pair pair3 = TuplesKt.to(AppEventUserAndAppDataField.ADVERTISER_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.MAD_ID));
        Pair pair4 = TuplesKt.to(AppEventUserAndAppDataField.PAGE_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.PAGE_ID));
        Pair pair5 = TuplesKt.to(AppEventUserAndAppDataField.PAGE_SCOPED_USER_ID, new SectionFieldMapping(conversionsAPISection, ConversionsAPIUserAndAppDataField.PAGE_SCOPED_USER_ID));
        AppEventUserAndAppDataField appEventUserAndAppDataField2 = AppEventUserAndAppDataField.ADV_TE;
        ConversionsAPISection conversionsAPISection2 = ConversionsAPISection.APP_DATA;
        f6243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, TuplesKt.to(appEventUserAndAppDataField2, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.ADV_TE)), TuplesKt.to(AppEventUserAndAppDataField.APP_TE, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.APP_TE)), TuplesKt.to(AppEventUserAndAppDataField.CONSIDER_VIEWS, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.CONSIDER_VIEWS)), TuplesKt.to(AppEventUserAndAppDataField.DEVICE_TOKEN, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.DEVICE_TOKEN)), TuplesKt.to(AppEventUserAndAppDataField.EXT_INFO, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.EXT_INFO)), TuplesKt.to(AppEventUserAndAppDataField.INCLUDE_DWELL_DATA, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INCLUDE_DWELL_DATA)), TuplesKt.to(AppEventUserAndAppDataField.INCLUDE_VIDEO_DATA, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INCLUDE_VIDEO_DATA)), TuplesKt.to(AppEventUserAndAppDataField.INSTALL_REFERRER, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INSTALL_REFERRER)), TuplesKt.to(AppEventUserAndAppDataField.INSTALLER_PACKAGE, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INSTALLER_PACKAGE)), TuplesKt.to(AppEventUserAndAppDataField.RECEIPT_DATA, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.RECEIPT_DATA)), TuplesKt.to(AppEventUserAndAppDataField.URL_SCHEMES, new SectionFieldMapping(conversionsAPISection2, ConversionsAPIUserAndAppDataField.URL_SCHEMES)), TuplesKt.to(AppEventUserAndAppDataField.USER_DATA, new SectionFieldMapping(conversionsAPISection, null)));
        Pair pair6 = TuplesKt.to(CustomEventField.EVENT_TIME, new SectionCustomEventFieldMapping(null, ConversionsAPICustomEventField.EVENT_TIME));
        Pair pair7 = TuplesKt.to(CustomEventField.EVENT_NAME, new SectionCustomEventFieldMapping(null, ConversionsAPICustomEventField.EVENT_NAME));
        CustomEventField customEventField = CustomEventField.VALUE_TO_SUM;
        ConversionsAPISection conversionsAPISection3 = ConversionsAPISection.CUSTOM_DATA;
        f6242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.mapOf(pair6, pair7, TuplesKt.to(customEventField, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.VALUE_TO_SUM)), TuplesKt.to(CustomEventField.CONTENT_IDS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CONTENT_IDS)), TuplesKt.to(CustomEventField.CONTENTS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CONTENTS)), TuplesKt.to(CustomEventField.CONTENT_TYPE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CONTENT_TYPE)), TuplesKt.to(CustomEventField.CURRENCY, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.CURRENCY)), TuplesKt.to(CustomEventField.DESCRIPTION, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.DESCRIPTION)), TuplesKt.to(CustomEventField.LEVEL, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.LEVEL)), TuplesKt.to(CustomEventField.MAX_RATING_VALUE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.MAX_RATING_VALUE)), TuplesKt.to(CustomEventField.NUM_ITEMS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.NUM_ITEMS)), TuplesKt.to(CustomEventField.PAYMENT_INFO_AVAILABLE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.PAYMENT_INFO_AVAILABLE)), TuplesKt.to(CustomEventField.REGISTRATION_METHOD, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.REGISTRATION_METHOD)), TuplesKt.to(CustomEventField.SEARCH_STRING, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.SEARCH_STRING)), TuplesKt.to(CustomEventField.SUCCESS, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.SUCCESS)), TuplesKt.to(CustomEventField.ORDER_ID, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.ORDER_ID)), TuplesKt.to(CustomEventField.AD_TYPE, new SectionCustomEventFieldMapping(conversionsAPISection3, ConversionsAPICustomEventField.AD_TYPE)));
        f6241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.mapOf(TuplesKt.to("fb_mobile_achievement_unlocked", ConversionsAPIEventName.UNLOCKED_ACHIEVEMENT), TuplesKt.to("fb_mobile_activate_app", ConversionsAPIEventName.ACTIVATED_APP), TuplesKt.to("fb_mobile_add_payment_info", ConversionsAPIEventName.ADDED_PAYMENT_INFO), TuplesKt.to("fb_mobile_add_to_cart", ConversionsAPIEventName.ADDED_TO_CART), TuplesKt.to("fb_mobile_add_to_wishlist", ConversionsAPIEventName.ADDED_TO_WISHLIST), TuplesKt.to("fb_mobile_complete_registration", ConversionsAPIEventName.COMPLETED_REGISTRATION), TuplesKt.to("fb_mobile_content_view", ConversionsAPIEventName.VIEWED_CONTENT), TuplesKt.to("fb_mobile_initiated_checkout", ConversionsAPIEventName.INITIATED_CHECKOUT), TuplesKt.to("fb_mobile_level_achieved", ConversionsAPIEventName.ACHIEVED_LEVEL), TuplesKt.to("fb_mobile_purchase", ConversionsAPIEventName.PURCHASED), TuplesKt.to("fb_mobile_rate", ConversionsAPIEventName.RATED), TuplesKt.to("fb_mobile_search", ConversionsAPIEventName.SEARCHED), TuplesKt.to("fb_mobile_spent_credits", ConversionsAPIEventName.SPENT_CREDITS), TuplesKt.to("fb_mobile_tutorial_completion", ConversionsAPIEventName.COMPLETED_TUTORIAL));
    }

    @JvmStatic
    @Nullable
    public static final Object Wwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Object obj) {
        String str2;
        String str3;
        Object Wwwwwwwwwwwwwwwwwwwww2;
        boolean z = false;
        ValueTransformationType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ValueTransformationType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (obj instanceof String) {
            str2 = (String) obj;
        } else {
            str2 = null;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && str2 != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return StringsKt.toIntOrNull(obj.toString());
                    }
                    throw new NoWhenBranchMatchedException();
                }
                Integer intOrNull = StringsKt.toIntOrNull(str2.toString());
                if (intOrNull == null) {
                    return null;
                }
                if (intOrNull.intValue() != 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
            try {
                Utility utility = Utility.INSTANCE;
                List<String> Wwwwwwwwwwwwwwwwwwwww3 = Utility.Wwwwwwwwwwwwwwwwwwwww(new JSONArray(str2));
                ArrayList arrayList = new ArrayList();
                for (String str4 : Wwwwwwwwwwwwwwwwwwwww3) {
                    try {
                        try {
                            Utility utility2 = Utility.INSTANCE;
                            Wwwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwww(new JSONObject(str4));
                        } catch (JSONException unused) {
                        }
                    } catch (JSONException unused2) {
                        Utility utility3 = Utility.INSTANCE;
                        Wwwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwwww(new JSONArray(str3));
                    }
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwww2);
                }
                return arrayList;
            } catch (JSONException e) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", obj, e);
                return Unit.INSTANCE;
            }
        }
        return obj;
    }

    @JvmStatic
    @Nullable
    public static final ArrayList<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Utility utility = Utility.INSTANCE;
            for (String str2 : Utility.Wwwwwwwwwwwwwwwwwwwww(new JSONArray(str))) {
                Utility utility2 = Utility.INSTANCE;
                arrayList.add(Utility.Wwwwwwwwwwwwwwwwwwww(new JSONObject(str2)));
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            ArrayList<Map<String, Object>> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Map map = (Map) obj;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (String str3 : map.keySet()) {
                    CustomEventField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CustomEventField.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3);
                    SectionCustomEventFieldMapping sectionCustomEventFieldMapping = f6242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && sectionCustomEventFieldMapping != null) {
                        ConversionsAPISection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sectionCustomEventFieldMapping.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == ConversionsAPISection.CUSTOM_DATA) {
                                String rawValue = sectionCustomEventFieldMapping.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getRawValue();
                                Object obj2 = map.get(str3);
                                if (obj2 != null) {
                                    Object Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(str3, obj2);
                                    if (Wwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                        linkedHashMap.put(rawValue, Wwwwwwwwwwwwwwwwwwwwwww2);
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                                    }
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                                }
                            } else {
                                continue;
                            }
                        } else {
                            try {
                                String rawValue2 = sectionCustomEventFieldMapping.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getRawValue();
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == CustomEventField.EVENT_NAME && ((String) map.get(str3)) != null) {
                                    AppEventsConversionsAPITransformer appEventsConversionsAPITransformer = INSTANCE;
                                    Object obj3 = map.get(str3);
                                    if (obj3 != null) {
                                        linkedHashMap2.put(rawValue2, appEventsConversionsAPITransformer.Wwwwwwwwwwwwwwwwwwwwwwwww((String) obj3));
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                    }
                                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == CustomEventField.EVENT_TIME && ((Integer) map.get(str3)) != null) {
                                    Object obj4 = map.get(str3);
                                    if (obj4 != null) {
                                        Object Wwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwww(str3, obj4);
                                        if (Wwwwwwwwwwwwwwwwwwwwwww3 != null) {
                                            linkedHashMap2.put(rawValue2, Wwwwwwwwwwwwwwwwwwwwwww3);
                                        } else {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                                        }
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                                    }
                                }
                            } catch (ClassCastException e) {
                                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents ClassCastException: \n %s ", ExceptionsKt.stackTraceToString(e));
                            }
                        }
                    }
                }
                if (!linkedHashMap.isEmpty()) {
                    linkedHashMap2.put(ConversionsAPISection.CUSTOM_DATA.getRawValue(), linkedHashMap);
                }
                arrayList2.add(linkedHashMap2);
            }
            return arrayList2;
        } catch (JSONException e2) {
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", str, e2);
            return null;
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Map<String, ConversionsAPIEventName> map = f6241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (map.containsKey(str)) {
            ConversionsAPIEventName conversionsAPIEventName = map.get(str);
            if (conversionsAPIEventName == null) {
                return "";
            }
            return conversionsAPIEventName.getRawValue();
        }
        return str;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, Object> map, AppEventUserAndAppDataField appEventUserAndAppDataField, Object obj) {
        ConversionsAPIUserAndAppDataField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (appEventUserAndAppDataField == AppEventUserAndAppDataField.USER_DATA) {
            try {
                Utility utility = Utility.INSTANCE;
                map.putAll(Utility.Wwwwwwwwwwwwwwwwwwww(new JSONObject((String) obj)));
                return;
            } catch (JSONException e) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", obj, e);
                return;
            }
        }
        SectionFieldMapping sectionFieldMapping = f6243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(appEventUserAndAppDataField);
        if (sectionFieldMapping == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sectionFieldMapping.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        map.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getRawValue(), obj);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, Object> map, AppEventUserAndAppDataField appEventUserAndAppDataField, Object obj) {
        ConversionsAPIUserAndAppDataField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        SectionFieldMapping sectionFieldMapping = f6243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(appEventUserAndAppDataField);
        if (sectionFieldMapping == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sectionFieldMapping.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        map.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getRawValue(), obj);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, Object> map, @NotNull Map<String, Object> map2, @NotNull AppEventUserAndAppDataField appEventUserAndAppDataField, @NotNull Object obj) {
        SectionFieldMapping sectionFieldMapping = f6243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(appEventUserAndAppDataField);
        if (sectionFieldMapping != null) {
            int i = WhenMappings.$EnumSwitchMapping$1[sectionFieldMapping.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwww(map, appEventUserAndAppDataField, obj);
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(map2, appEventUserAndAppDataField, obj);
        }
    }

    public final AppEventType Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, ? extends Object> map, Map<String, Object> map2, Map<String, Object> map3, ArrayList<Map<String, Object>> arrayList, Map<String, Object> map4) {
        Object obj = map.get(OtherEventConstants.EVENT.getRawValue());
        AppEventType.Companion companion = AppEventType.Companion;
        if (obj != null) {
            AppEventType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) obj);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != AppEventType.OTHER) {
                for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    AppEventUserAndAppDataField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = AppEventUserAndAppDataField.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(map2, map3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, value);
                    } else {
                        boolean areEqual = Intrinsics.areEqual(key, ConversionsAPISection.CUSTOM_EVENTS.getRawValue());
                        boolean z = value instanceof String;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == AppEventType.CUSTOM && areEqual && z) {
                            ArrayList<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww((String) value);
                            if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                arrayList.addAll(Wwwwwwwwwwwwwwwwwwwwwwww2);
                            }
                        } else if (DataProcessingParameterName.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key) != null) {
                            map4.put(key, value);
                        }
                    }
                }
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
    }

    @Nullable
    public final List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, ? extends Object> map) {
        Map<String, Object> linkedHashMap = new LinkedHashMap<>();
        Map<String, Object> linkedHashMap2 = new LinkedHashMap<>();
        ArrayList<Map<String, Object>> arrayList = new ArrayList<>();
        Map<String, Object> linkedHashMap3 = new LinkedHashMap<>();
        AppEventType Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(map, linkedHashMap, linkedHashMap2, arrayList, linkedHashMap3);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == AppEventType.OTHER) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, linkedHashMap, linkedHashMap2, linkedHashMap3, arrayList, map.get(OtherEventConstants.INSTALL_EVENT_TIME.getRawValue()));
    }

    @NotNull
    public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, ? extends Object> map, @NotNull Map<String, ? extends Object> map2, @NotNull Map<String, ? extends Object> map3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OtherEventConstants.ACTION_SOURCE.getRawValue(), OtherEventConstants.APP.getRawValue());
        linkedHashMap.put(ConversionsAPISection.USER_DATA.getRawValue(), map);
        linkedHashMap.put(ConversionsAPISection.APP_DATA.getRawValue(), map2);
        linkedHashMap.putAll(map3);
        return linkedHashMap;
    }

    public final List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, ? extends Object> map, Object obj) {
        if (obj == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(map);
        linkedHashMap.put(ConversionsAPICustomEventField.EVENT_NAME.getRawValue(), OtherEventConstants.MOBILE_APP_INSTALL.getRawValue());
        linkedHashMap.put(ConversionsAPICustomEventField.EVENT_TIME.getRawValue(), obj);
        return CollectionsKt.listOf(linkedHashMap);
    }

    public final List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, ? extends Object> map, List<? extends Map<String, ? extends Object>> list) {
        if (list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(map);
            linkedHashMap.putAll((Map) it.next());
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    @Nullable
    public final List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppEventType appEventType, @NotNull Map<String, Object> map, @NotNull Map<String, Object> map2, @NotNull Map<String, Object> map3, @NotNull List<? extends Map<String, ? extends Object>> list, @Nullable Object obj) {
        Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map, map2, map3);
        int i = WhenMappings.$EnumSwitchMapping$2[appEventType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, list);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, obj);
    }
}
