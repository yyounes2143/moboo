package com.vungle.ads.fpd;

import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 02\u00020\u0001:\u0002/0Ba\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0016\b\u0001\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011B\u0005¢\u0006\u0002\u0010\u0012J\u0006\u0010'\u001a\u00020(J!\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.HÇ\u0001R&\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0013\u0010\u0012R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0014\u0010\u0012R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0015\u0010\u0012R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0016\u0010\u0012R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0012R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0011\u0010!\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0011\u0010$\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u00061"}, d2 = {"Lcom/vungle/ads/fpd/FirstPartyData;", "", "seen1", "", "_sessionContext", "Lcom/vungle/ads/fpd/SessionContext;", "_demographic", "Lcom/vungle/ads/fpd/Demographic;", "_location", "Lcom/vungle/ads/fpd/Location;", "_revenue", "Lcom/vungle/ads/fpd/Revenue;", "_customData", "", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/fpd/SessionContext;Lcom/vungle/ads/fpd/Demographic;Lcom/vungle/ads/fpd/Location;Lcom/vungle/ads/fpd/Revenue;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "()V", "get_customData$annotations", "get_demographic$annotations", "get_location$annotations", "get_revenue$annotations", "get_sessionContext$annotations", "customData", "getCustomData", "()Ljava/util/Map;", "demographic", "getDemographic", "()Lcom/vungle/ads/fpd/Demographic;", FirebaseAnalytics.Param.LOCATION, "getLocation", "()Lcom/vungle/ads/fpd/Location;", "revenue", "getRevenue", "()Lcom/vungle/ads/fpd/Revenue;", "sessionContext", "getSessionContext", "()Lcom/vungle/ads/fpd/SessionContext;", "clearAll", "", "write$Self", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class FirstPartyData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Map<String, String> _customData;
    @Nullable
    private volatile Demographic _demographic;
    @Nullable
    private volatile Location _location;
    @Nullable
    private volatile Revenue _revenue;
    @Nullable
    private volatile SessionContext _sessionContext;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/fpd/FirstPartyData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/fpd/FirstPartyData;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<FirstPartyData> serializer() {
            return FirstPartyData$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public FirstPartyData() {
    }

    @JvmStatic
    public static final void write$Self(@NotNull FirstPartyData firstPartyData, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || firstPartyData._sessionContext != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, SessionContext$$serializer.INSTANCE, firstPartyData._sessionContext);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || firstPartyData._demographic != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, Demographic$$serializer.INSTANCE, firstPartyData._demographic);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || firstPartyData._location != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, Location$$serializer.INSTANCE, firstPartyData._location);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || firstPartyData._revenue != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, Revenue$$serializer.INSTANCE, firstPartyData._revenue);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || firstPartyData._customData != null) {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, new LinkedHashMapSerializer(stringSerializer, stringSerializer), firstPartyData._customData);
        }
    }

    public final synchronized void clearAll() {
        try {
            this._sessionContext = null;
            this._demographic = null;
            this._location = null;
            this._revenue = null;
            Map<String, String> map = this._customData;
            if (map != null) {
                map.clear();
            }
            this._customData = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @NotNull
    public final synchronized Map<String, String> getCustomData() {
        Map<String, String> map;
        map = this._customData;
        if (map == null) {
            map = new ConcurrentHashMap<>();
            this._customData = map;
        }
        return map;
    }

    @NotNull
    public final synchronized Demographic getDemographic() {
        Demographic demographic;
        demographic = this._demographic;
        if (demographic == null) {
            demographic = new Demographic();
            this._demographic = demographic;
        }
        return demographic;
    }

    @NotNull
    public final synchronized Location getLocation() {
        Location location;
        location = this._location;
        if (location == null) {
            location = new Location();
            this._location = location;
        }
        return location;
    }

    @NotNull
    public final synchronized Revenue getRevenue() {
        Revenue revenue;
        revenue = this._revenue;
        if (revenue == null) {
            revenue = new Revenue();
            this._revenue = revenue;
        }
        return revenue;
    }

    @NotNull
    public final synchronized SessionContext getSessionContext() {
        SessionContext sessionContext;
        sessionContext = this._sessionContext;
        if (sessionContext == null) {
            sessionContext = new SessionContext();
            this._sessionContext = sessionContext;
        }
        return sessionContext;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ FirstPartyData(int i, @SerialName("session_context") SessionContext sessionContext, @SerialName("demographic") Demographic demographic, @SerialName("location") Location location, @SerialName("revenue") Revenue revenue, @SerialName("custom_data") Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this._sessionContext = null;
        } else {
            this._sessionContext = sessionContext;
        }
        if ((i & 2) == 0) {
            this._demographic = null;
        } else {
            this._demographic = demographic;
        }
        if ((i & 4) == 0) {
            this._location = null;
        } else {
            this._location = location;
        }
        if ((i & 8) == 0) {
            this._revenue = null;
        } else {
            this._revenue = revenue;
        }
        if ((i & 16) == 0) {
            this._customData = null;
        } else {
            this._customData = map;
        }
    }

    @SerialName("custom_data")
    private static /* synthetic */ void get_customData$annotations() {
    }

    @SerialName("demographic")
    private static /* synthetic */ void get_demographic$annotations() {
    }

    @SerialName(FirebaseAnalytics.Param.LOCATION)
    private static /* synthetic */ void get_location$annotations() {
    }

    @SerialName("revenue")
    private static /* synthetic */ void get_revenue$annotations() {
    }

    @SerialName("session_context")
    private static /* synthetic */ void get_sessionContext$annotations() {
    }
}
