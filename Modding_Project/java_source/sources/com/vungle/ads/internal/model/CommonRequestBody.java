package com.vungle.ads.internal.model;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.fpd.FirstPartyData$$serializer;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u0000 72\u00020\u0001:\n3456789:;<BK\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010B=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u0011J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003JC\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020+HÖ\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202HÇ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006="}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody;", "", "seen1", "", "device", "Lcom/vungle/ads/internal/model/DeviceNode;", MBridgeConstans.DYNAMIC_VIEW_WX_APP, "Lcom/vungle/ads/internal/model/AppNode;", "user", "Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "ext", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/AppNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/AppNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;)V", "getApp", "()Lcom/vungle/ads/internal/model/AppNode;", "getDevice", "()Lcom/vungle/ads/internal/model/DeviceNode;", "getExt", "()Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "setExt", "(Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;)V", "getRequest", "()Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "setRequest", "(Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;)V", "getUser", "()Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "AdSizeParam", "CCPA", "COPPA", "Companion", "GDPR", "IAB", "RequestExt", "RequestParam", "User", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class CommonRequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: app  reason: collision with root package name */
    private final AppNode f11067app;
    @NotNull
    private final DeviceNode device;
    @Nullable
    private RequestExt ext;
    @Nullable
    private RequestParam request;
    @Nullable
    private final User user;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019HÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;", "", "seen1", "", NotificationCompat.CATEGORY_STATUS, "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;)V", "getStatus", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class CCPA {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String status;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<CCPA> serializer() {
                return CommonRequestBody$CCPA$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ CCPA(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CommonRequestBody$CCPA$$serializer.INSTANCE.getDescriptor());
            }
            this.status = str;
        }

        public static /* synthetic */ CCPA copy$default(CCPA ccpa, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ccpa.status;
            }
            return ccpa.copy(str);
        }

        @NotNull
        public final String component1() {
            return this.status;
        }

        @NotNull
        public final CCPA copy(@NotNull String str) {
            return new CCPA(str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof CCPA) && Intrinsics.areEqual(this.status, ((CCPA) obj).status)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getStatus() {
            return this.status;
        }

        public int hashCode() {
            return this.status.hashCode();
        }

        @NotNull
        public String toString() {
            return "CCPA(status=" + this.status + ')';
        }

        public CCPA(@NotNull String str) {
            this.status = str;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001d\u001eB%\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\u000f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J!\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cHÇ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\r\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\u0004\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;", "", "seen1", "", "isCoppa", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Boolean;)V", "isCoppa$annotations", "()V", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "copy", "(Ljava/lang/Boolean;)Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class COPPA {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Boolean isCoppa;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<COPPA> serializer() {
                return CommonRequestBody$COPPA$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ COPPA(int i, @SerialName("is_coppa") Boolean bool, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CommonRequestBody$COPPA$$serializer.INSTANCE.getDescriptor());
            }
            this.isCoppa = bool;
        }

        public static /* synthetic */ COPPA copy$default(COPPA coppa, Boolean bool, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = coppa.isCoppa;
            }
            return coppa.copy(bool);
        }

        @Nullable
        public final Boolean component1() {
            return this.isCoppa;
        }

        @NotNull
        public final COPPA copy(@Nullable Boolean bool) {
            return new COPPA(bool);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof COPPA) && Intrinsics.areEqual(this.isCoppa, ((COPPA) obj).isCoppa)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Boolean bool = this.isCoppa;
            if (bool == null) {
                return 0;
            }
            return bool.hashCode();
        }

        @Nullable
        public final Boolean isCoppa() {
            return this.isCoppa;
        }

        @NotNull
        public String toString() {
            return "COPPA(isCoppa=" + this.isCoppa + ')';
        }

        public COPPA(@Nullable Boolean bool) {
            this.isCoppa = bool;
        }

        @SerialName(Cookie.COPPA_STATUS_KEY)
        public static /* synthetic */ void isCoppa$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<CommonRequestBody> serializer() {
            return CommonRequestBody$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 +2\u00020\u0001:\u0002*+BG\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\bHÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J!\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)HÇ\u0001R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u000f\u001a\u0004\b\u0017\u0010\u0018¨\u0006,"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR;", "", "seen1", "", "consentStatus", "", "consentSource", "consentTimestamp", "", "consentMessageVersion", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getConsentMessageVersion$annotations", "()V", "getConsentMessageVersion", "()Ljava/lang/String;", "getConsentSource$annotations", "getConsentSource", "getConsentStatus$annotations", "getConsentStatus", "getConsentTimestamp$annotations", "getConsentTimestamp", "()J", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class GDPR {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String consentMessageVersion;
        @NotNull
        private final String consentSource;
        @NotNull
        private final String consentStatus;
        private final long consentTimestamp;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<GDPR> serializer() {
                return CommonRequestBody$GDPR$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ GDPR(int i, @SerialName("consent_status") String str, @SerialName("consent_source") String str2, @SerialName("consent_timestamp") long j, @SerialName("consent_message_version") String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if (15 != (i & 15)) {
                PluginExceptionsKt.throwMissingFieldException(i, 15, CommonRequestBody$GDPR$$serializer.INSTANCE.getDescriptor());
            }
            this.consentStatus = str;
            this.consentSource = str2;
            this.consentTimestamp = j;
            this.consentMessageVersion = str3;
        }

        public static /* synthetic */ GDPR copy$default(GDPR gdpr, String str, String str2, long j, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = gdpr.consentStatus;
            }
            if ((i & 2) != 0) {
                str2 = gdpr.consentSource;
            }
            if ((i & 4) != 0) {
                j = gdpr.consentTimestamp;
            }
            if ((i & 8) != 0) {
                str3 = gdpr.consentMessageVersion;
            }
            String str4 = str3;
            return gdpr.copy(str, str2, j, str4);
        }

        @JvmStatic
        public static final void write$Self(@NotNull GDPR gdpr, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            compositeEncoder.encodeStringElement(serialDescriptor, 0, gdpr.consentStatus);
            compositeEncoder.encodeStringElement(serialDescriptor, 1, gdpr.consentSource);
            compositeEncoder.encodeLongElement(serialDescriptor, 2, gdpr.consentTimestamp);
            compositeEncoder.encodeStringElement(serialDescriptor, 3, gdpr.consentMessageVersion);
        }

        @NotNull
        public final String component1() {
            return this.consentStatus;
        }

        @NotNull
        public final String component2() {
            return this.consentSource;
        }

        public final long component3() {
            return this.consentTimestamp;
        }

        @NotNull
        public final String component4() {
            return this.consentMessageVersion;
        }

        @NotNull
        public final GDPR copy(@NotNull String str, @NotNull String str2, long j, @NotNull String str3) {
            return new GDPR(str, str2, j, str3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GDPR)) {
                return false;
            }
            GDPR gdpr = (GDPR) obj;
            if (Intrinsics.areEqual(this.consentStatus, gdpr.consentStatus) && Intrinsics.areEqual(this.consentSource, gdpr.consentSource) && this.consentTimestamp == gdpr.consentTimestamp && Intrinsics.areEqual(this.consentMessageVersion, gdpr.consentMessageVersion)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getConsentMessageVersion() {
            return this.consentMessageVersion;
        }

        @NotNull
        public final String getConsentSource() {
            return this.consentSource;
        }

        @NotNull
        public final String getConsentStatus() {
            return this.consentStatus;
        }

        public final long getConsentTimestamp() {
            return this.consentTimestamp;
        }

        public int hashCode() {
            return (((((this.consentStatus.hashCode() * 31) + this.consentSource.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.consentTimestamp)) * 31) + this.consentMessageVersion.hashCode();
        }

        @NotNull
        public String toString() {
            return "GDPR(consentStatus=" + this.consentStatus + ", consentSource=" + this.consentSource + ", consentTimestamp=" + this.consentTimestamp + ", consentMessageVersion=" + this.consentMessageVersion + ')';
        }

        public GDPR(@NotNull String str, @NotNull String str2, long j, @NotNull String str3) {
            this.consentStatus = str;
            this.consentSource = str2;
            this.consentTimestamp = j;
            this.consentMessageVersion = str3;
        }

        @SerialName("consent_message_version")
        public static /* synthetic */ void getConsentMessageVersion$annotations() {
        }

        @SerialName("consent_source")
        public static /* synthetic */ void getConsentSource$annotations() {
        }

        @SerialName("consent_status")
        public static /* synthetic */ void getConsentStatus$annotations() {
        }

        @SerialName("consent_timestamp")
        public static /* synthetic */ void getConsentTimestamp$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB%\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J!\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bHÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;", "", "seen1", "", "tcf", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;)V", "getTcf$annotations", "()V", "getTcf", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class IAB {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String tcf;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$IAB$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<IAB> serializer() {
                return CommonRequestBody$IAB$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ IAB(int i, @SerialName("tcf") String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CommonRequestBody$IAB$$serializer.INSTANCE.getDescriptor());
            }
            this.tcf = str;
        }

        public static /* synthetic */ IAB copy$default(IAB iab, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = iab.tcf;
            }
            return iab.copy(str);
        }

        @NotNull
        public final String component1() {
            return this.tcf;
        }

        @NotNull
        public final IAB copy(@NotNull String str) {
            return new IAB(str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof IAB) && Intrinsics.areEqual(this.tcf, ((IAB) obj).tcf)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getTcf() {
            return this.tcf;
        }

        public int hashCode() {
            return this.tcf.hashCode();
        }

        @NotNull
        public String toString() {
            return "IAB(tcf=" + this.tcf + ')';
        }

        public IAB(@NotNull String str) {
            this.tcf = str;
        }

        @SerialName("tcf")
        public static /* synthetic */ void getTcf$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 +2\u00020\u0001:\u0002*+B=\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB)\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0013J2\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J!\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)HÇ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0014\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013R&\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0010\"\u0004\b\u0017\u0010\u0018¨\u0006,"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "", "seen1", "", "configExtension", "", "signals", "configLastValidatedTimestamp", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getConfigExtension$annotations", "()V", "getConfigExtension", "()Ljava/lang/String;", "getConfigLastValidatedTimestamp$annotations", "getConfigLastValidatedTimestamp", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getSignals$annotations", "getSignals", "setSignals", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class RequestExt {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String configExtension;
        @Nullable
        private final Long configLastValidatedTimestamp;
        @Nullable
        private String signals;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<RequestExt> serializer() {
                return CommonRequestBody$RequestExt$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public RequestExt() {
            this((String) null, (String) null, (Long) null, 7, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ RequestExt copy$default(RequestExt requestExt, String str, String str2, Long l, int i, Object obj) {
            if ((i & 1) != 0) {
                str = requestExt.configExtension;
            }
            if ((i & 2) != 0) {
                str2 = requestExt.signals;
            }
            if ((i & 4) != 0) {
                l = requestExt.configLastValidatedTimestamp;
            }
            return requestExt.copy(str, str2, l);
        }

        @JvmStatic
        public static final void write$Self(@NotNull RequestExt requestExt, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || requestExt.configExtension != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, requestExt.configExtension);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || requestExt.signals != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, requestExt.signals);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || requestExt.configLastValidatedTimestamp != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, LongSerializer.INSTANCE, requestExt.configLastValidatedTimestamp);
            }
        }

        @Nullable
        public final String component1() {
            return this.configExtension;
        }

        @Nullable
        public final String component2() {
            return this.signals;
        }

        @Nullable
        public final Long component3() {
            return this.configLastValidatedTimestamp;
        }

        @NotNull
        public final RequestExt copy(@Nullable String str, @Nullable String str2, @Nullable Long l) {
            return new RequestExt(str, str2, l);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestExt)) {
                return false;
            }
            RequestExt requestExt = (RequestExt) obj;
            if (Intrinsics.areEqual(this.configExtension, requestExt.configExtension) && Intrinsics.areEqual(this.signals, requestExt.signals) && Intrinsics.areEqual(this.configLastValidatedTimestamp, requestExt.configLastValidatedTimestamp)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getConfigExtension() {
            return this.configExtension;
        }

        @Nullable
        public final Long getConfigLastValidatedTimestamp() {
            return this.configLastValidatedTimestamp;
        }

        @Nullable
        public final String getSignals() {
            return this.signals;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            String str = this.configExtension;
            int i = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            String str2 = this.signals;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            Long l = this.configLastValidatedTimestamp;
            if (l != null) {
                i = l.hashCode();
            }
            return i3 + i;
        }

        public final void setSignals(@Nullable String str) {
            this.signals = str;
        }

        @NotNull
        public String toString() {
            return "RequestExt(configExtension=" + this.configExtension + ", signals=" + this.signals + ", configLastValidatedTimestamp=" + this.configLastValidatedTimestamp + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ RequestExt(int i, @SerialName("config_extension") String str, @SerialName("signals") String str2, @SerialName("config_last_validated_ts") Long l, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.configExtension = null;
            } else {
                this.configExtension = str;
            }
            if ((i & 2) == 0) {
                this.signals = null;
            } else {
                this.signals = str2;
            }
            if ((i & 4) == 0) {
                this.configLastValidatedTimestamp = null;
            } else {
                this.configLastValidatedTimestamp = l;
            }
        }

        public RequestExt(@Nullable String str, @Nullable String str2, @Nullable Long l) {
            this.configExtension = str;
            this.signals = str2;
            this.configLastValidatedTimestamp = l;
        }

        public /* synthetic */ RequestExt(String str, String str2, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : l);
        }

        @SerialName(Cookie.CONFIG_EXTENSION)
        public static /* synthetic */ void getConfigExtension$annotations() {
        }

        @SerialName("config_last_validated_ts")
        public static /* synthetic */ void getConfigLastValidatedTimestamp$annotations() {
        }

        @SerialName("signals")
        public static /* synthetic */ void getSignals$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 92\u00020\u0001:\u000289Bc\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010BS\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0011J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\\\u0010*\u001a\u00020\u00002\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u00020\u0006HÖ\u0001J!\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207HÇ\u0001R&\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u001b\u0012\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010\u001eR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001e¨\u0006:"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "", "seen1", "", "placements", "", "", "adSize", "Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;", "adStartTime", "", "advAppId", "placementReferenceId", "user", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/util/List;Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdSize$annotations", "()V", "getAdSize", "()Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;", "setAdSize", "(Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;)V", "getAdStartTime$annotations", "getAdStartTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getAdvAppId$annotations", "getAdvAppId", "()Ljava/lang/String;", "getPlacementReferenceId$annotations", "getPlacementReferenceId", "getPlacements", "()Ljava/util/List;", "getUser", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/util/List;Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class RequestParam {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private AdSizeParam adSize;
        @Nullable
        private final Long adStartTime;
        @Nullable
        private final String advAppId;
        @Nullable
        private final String placementReferenceId;
        @Nullable
        private final List<String> placements;
        @Nullable
        private final String user;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<RequestParam> serializer() {
                return CommonRequestBody$RequestParam$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public RequestParam() {
            this((List) null, (AdSizeParam) null, (Long) null, (String) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ RequestParam copy$default(RequestParam requestParam, List list, AdSizeParam adSizeParam, Long l, String str, String str2, String str3, int i, Object obj) {
            List<String> list2 = list;
            if ((i & 1) != 0) {
                list2 = requestParam.placements;
            }
            if ((i & 2) != 0) {
                adSizeParam = requestParam.adSize;
            }
            if ((i & 4) != 0) {
                l = requestParam.adStartTime;
            }
            if ((i & 8) != 0) {
                str = requestParam.advAppId;
            }
            if ((i & 16) != 0) {
                str2 = requestParam.placementReferenceId;
            }
            if ((i & 32) != 0) {
                str3 = requestParam.user;
            }
            String str4 = str2;
            String str5 = str3;
            return requestParam.copy(list2, adSizeParam, l, str, str4, str5);
        }

        @JvmStatic
        public static final void write$Self(@NotNull RequestParam requestParam, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || requestParam.placements != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, new ArrayListSerializer(StringSerializer.INSTANCE), requestParam.placements);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || requestParam.adSize != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, CommonRequestBody$AdSizeParam$$serializer.INSTANCE, requestParam.adSize);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || requestParam.adStartTime != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, LongSerializer.INSTANCE, requestParam.adStartTime);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || requestParam.advAppId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, requestParam.advAppId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || requestParam.placementReferenceId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, requestParam.placementReferenceId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || requestParam.user != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, requestParam.user);
            }
        }

        @Nullable
        public final List<String> component1() {
            return this.placements;
        }

        @Nullable
        public final AdSizeParam component2() {
            return this.adSize;
        }

        @Nullable
        public final Long component3() {
            return this.adStartTime;
        }

        @Nullable
        public final String component4() {
            return this.advAppId;
        }

        @Nullable
        public final String component5() {
            return this.placementReferenceId;
        }

        @Nullable
        public final String component6() {
            return this.user;
        }

        @NotNull
        public final RequestParam copy(@Nullable List<String> list, @Nullable AdSizeParam adSizeParam, @Nullable Long l, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            return new RequestParam(list, adSizeParam, l, str, str2, str3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestParam)) {
                return false;
            }
            RequestParam requestParam = (RequestParam) obj;
            if (Intrinsics.areEqual(this.placements, requestParam.placements) && Intrinsics.areEqual(this.adSize, requestParam.adSize) && Intrinsics.areEqual(this.adStartTime, requestParam.adStartTime) && Intrinsics.areEqual(this.advAppId, requestParam.advAppId) && Intrinsics.areEqual(this.placementReferenceId, requestParam.placementReferenceId) && Intrinsics.areEqual(this.user, requestParam.user)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final AdSizeParam getAdSize() {
            return this.adSize;
        }

        @Nullable
        public final Long getAdStartTime() {
            return this.adStartTime;
        }

        @Nullable
        public final String getAdvAppId() {
            return this.advAppId;
        }

        @Nullable
        public final String getPlacementReferenceId() {
            return this.placementReferenceId;
        }

        @Nullable
        public final List<String> getPlacements() {
            return this.placements;
        }

        @Nullable
        public final String getUser() {
            return this.user;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            List<String> list = this.placements;
            int i = 0;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            int i2 = hashCode * 31;
            AdSizeParam adSizeParam = this.adSize;
            if (adSizeParam == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = adSizeParam.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            Long l = this.adStartTime;
            if (l == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = l.hashCode();
            }
            int i4 = (i3 + hashCode3) * 31;
            String str = this.advAppId;
            if (str == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str.hashCode();
            }
            int i5 = (i4 + hashCode4) * 31;
            String str2 = this.placementReferenceId;
            if (str2 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str2.hashCode();
            }
            int i6 = (i5 + hashCode5) * 31;
            String str3 = this.user;
            if (str3 != null) {
                i = str3.hashCode();
            }
            return i6 + i;
        }

        public final void setAdSize(@Nullable AdSizeParam adSizeParam) {
            this.adSize = adSizeParam;
        }

        @NotNull
        public String toString() {
            return "RequestParam(placements=" + this.placements + ", adSize=" + this.adSize + ", adStartTime=" + this.adStartTime + ", advAppId=" + this.advAppId + ", placementReferenceId=" + this.placementReferenceId + ", user=" + this.user + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ RequestParam(int i, List list, @SerialName("ad_size") AdSizeParam adSizeParam, @SerialName("ad_start_time") Long l, @SerialName("app_id") String str, @SerialName("placement_reference_id") String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.placements = null;
            } else {
                this.placements = list;
            }
            if ((i & 2) == 0) {
                this.adSize = null;
            } else {
                this.adSize = adSizeParam;
            }
            if ((i & 4) == 0) {
                this.adStartTime = null;
            } else {
                this.adStartTime = l;
            }
            if ((i & 8) == 0) {
                this.advAppId = null;
            } else {
                this.advAppId = str;
            }
            if ((i & 16) == 0) {
                this.placementReferenceId = null;
            } else {
                this.placementReferenceId = str2;
            }
            if ((i & 32) == 0) {
                this.user = null;
            } else {
                this.user = str3;
            }
        }

        public RequestParam(@Nullable List<String> list, @Nullable AdSizeParam adSizeParam, @Nullable Long l, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            this.placements = list;
            this.adSize = adSizeParam;
            this.adStartTime = l;
            this.advAppId = str;
            this.placementReferenceId = str2;
            this.user = str3;
        }

        public /* synthetic */ RequestParam(List list, AdSizeParam adSizeParam, Long l, String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : adSizeParam, (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3);
        }

        @SerialName("ad_size")
        public static /* synthetic */ void getAdSize$annotations() {
        }

        @SerialName("ad_start_time")
        public static /* synthetic */ void getAdStartTime$annotations() {
        }

        @SerialName("app_id")
        public static /* synthetic */ void getAdvAppId$annotations() {
        }

        @SerialName("placement_reference_id")
        public static /* synthetic */ void getPlacementReferenceId$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 :2\u00020\u0001:\u00029:BK\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010BA\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u0011J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\rHÆ\u0003JE\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u000201HÖ\u0001J!\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208HÇ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006;"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "", "seen1", "", "gdpr", "Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR;", "ccpa", "Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;", "coppa", "Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;", "fpd", "Lcom/vungle/ads/fpd/FirstPartyData;", "iab", "Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/CommonRequestBody$GDPR;Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;Lcom/vungle/ads/fpd/FirstPartyData;Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR;Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;Lcom/vungle/ads/fpd/FirstPartyData;Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;)V", "getCcpa", "()Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;", "setCcpa", "(Lcom/vungle/ads/internal/model/CommonRequestBody$CCPA;)V", "getCoppa", "()Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;", "setCoppa", "(Lcom/vungle/ads/internal/model/CommonRequestBody$COPPA;)V", "getFpd", "()Lcom/vungle/ads/fpd/FirstPartyData;", "setFpd", "(Lcom/vungle/ads/fpd/FirstPartyData;)V", "getGdpr", "()Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR;", "setGdpr", "(Lcom/vungle/ads/internal/model/CommonRequestBody$GDPR;)V", "getIab", "()Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;", "setIab", "(Lcom/vungle/ads/internal/model/CommonRequestBody$IAB;)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class User {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private CCPA ccpa;
        @Nullable
        private COPPA coppa;
        @Nullable
        private FirstPartyData fpd;
        @Nullable
        private GDPR gdpr;
        @Nullable
        private IAB iab;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$User$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<User> serializer() {
                return CommonRequestBody$User$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public User() {
            this((GDPR) null, (CCPA) null, (COPPA) null, (FirstPartyData) null, (IAB) null, 31, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ User copy$default(User user, GDPR gdpr, CCPA ccpa, COPPA coppa, FirstPartyData firstPartyData, IAB iab, int i, Object obj) {
            if ((i & 1) != 0) {
                gdpr = user.gdpr;
            }
            if ((i & 2) != 0) {
                ccpa = user.ccpa;
            }
            if ((i & 4) != 0) {
                coppa = user.coppa;
            }
            if ((i & 8) != 0) {
                firstPartyData = user.fpd;
            }
            if ((i & 16) != 0) {
                iab = user.iab;
            }
            IAB iab2 = iab;
            COPPA coppa2 = coppa;
            return user.copy(gdpr, ccpa, coppa2, firstPartyData, iab2);
        }

        @JvmStatic
        public static final void write$Self(@NotNull User user, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || user.gdpr != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, CommonRequestBody$GDPR$$serializer.INSTANCE, user.gdpr);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || user.ccpa != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, CommonRequestBody$CCPA$$serializer.INSTANCE, user.ccpa);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || user.coppa != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, CommonRequestBody$COPPA$$serializer.INSTANCE, user.coppa);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || user.fpd != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, FirstPartyData$$serializer.INSTANCE, user.fpd);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || user.iab != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, CommonRequestBody$IAB$$serializer.INSTANCE, user.iab);
            }
        }

        @Nullable
        public final GDPR component1() {
            return this.gdpr;
        }

        @Nullable
        public final CCPA component2() {
            return this.ccpa;
        }

        @Nullable
        public final COPPA component3() {
            return this.coppa;
        }

        @Nullable
        public final FirstPartyData component4() {
            return this.fpd;
        }

        @Nullable
        public final IAB component5() {
            return this.iab;
        }

        @NotNull
        public final User copy(@Nullable GDPR gdpr, @Nullable CCPA ccpa, @Nullable COPPA coppa, @Nullable FirstPartyData firstPartyData, @Nullable IAB iab) {
            return new User(gdpr, ccpa, coppa, firstPartyData, iab);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof User)) {
                return false;
            }
            User user = (User) obj;
            if (Intrinsics.areEqual(this.gdpr, user.gdpr) && Intrinsics.areEqual(this.ccpa, user.ccpa) && Intrinsics.areEqual(this.coppa, user.coppa) && Intrinsics.areEqual(this.fpd, user.fpd) && Intrinsics.areEqual(this.iab, user.iab)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final CCPA getCcpa() {
            return this.ccpa;
        }

        @Nullable
        public final COPPA getCoppa() {
            return this.coppa;
        }

        @Nullable
        public final FirstPartyData getFpd() {
            return this.fpd;
        }

        @Nullable
        public final GDPR getGdpr() {
            return this.gdpr;
        }

        @Nullable
        public final IAB getIab() {
            return this.iab;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            GDPR gdpr = this.gdpr;
            int i = 0;
            if (gdpr == null) {
                hashCode = 0;
            } else {
                hashCode = gdpr.hashCode();
            }
            int i2 = hashCode * 31;
            CCPA ccpa = this.ccpa;
            if (ccpa == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = ccpa.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            COPPA coppa = this.coppa;
            if (coppa == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = coppa.hashCode();
            }
            int i4 = (i3 + hashCode3) * 31;
            FirstPartyData firstPartyData = this.fpd;
            if (firstPartyData == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = firstPartyData.hashCode();
            }
            int i5 = (i4 + hashCode4) * 31;
            IAB iab = this.iab;
            if (iab != null) {
                i = iab.hashCode();
            }
            return i5 + i;
        }

        public final void setCcpa(@Nullable CCPA ccpa) {
            this.ccpa = ccpa;
        }

        public final void setCoppa(@Nullable COPPA coppa) {
            this.coppa = coppa;
        }

        public final void setFpd(@Nullable FirstPartyData firstPartyData) {
            this.fpd = firstPartyData;
        }

        public final void setGdpr(@Nullable GDPR gdpr) {
            this.gdpr = gdpr;
        }

        public final void setIab(@Nullable IAB iab) {
            this.iab = iab;
        }

        @NotNull
        public String toString() {
            return "User(gdpr=" + this.gdpr + ", ccpa=" + this.ccpa + ", coppa=" + this.coppa + ", fpd=" + this.fpd + ", iab=" + this.iab + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ User(int i, GDPR gdpr, CCPA ccpa, COPPA coppa, FirstPartyData firstPartyData, IAB iab, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.gdpr = null;
            } else {
                this.gdpr = gdpr;
            }
            if ((i & 2) == 0) {
                this.ccpa = null;
            } else {
                this.ccpa = ccpa;
            }
            if ((i & 4) == 0) {
                this.coppa = null;
            } else {
                this.coppa = coppa;
            }
            if ((i & 8) == 0) {
                this.fpd = null;
            } else {
                this.fpd = firstPartyData;
            }
            if ((i & 16) == 0) {
                this.iab = null;
            } else {
                this.iab = iab;
            }
        }

        public User(@Nullable GDPR gdpr, @Nullable CCPA ccpa, @Nullable COPPA coppa, @Nullable FirstPartyData firstPartyData, @Nullable IAB iab) {
            this.gdpr = gdpr;
            this.ccpa = ccpa;
            this.coppa = coppa;
            this.fpd = firstPartyData;
            this.iab = iab;
        }

        public /* synthetic */ User(GDPR gdpr, CCPA ccpa, COPPA coppa, FirstPartyData firstPartyData, IAB iab, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : gdpr, (i & 2) != 0 ? null : ccpa, (i & 4) != 0 ? null : coppa, (i & 8) != 0 ? null : firstPartyData, (i & 16) != 0 ? null : iab);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CommonRequestBody(int i, DeviceNode deviceNode, AppNode appNode, User user, RequestExt requestExt, RequestParam requestParam, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, CommonRequestBody$$serializer.INSTANCE.getDescriptor());
        }
        this.device = deviceNode;
        if ((i & 2) == 0) {
            this.f11067app = null;
        } else {
            this.f11067app = appNode;
        }
        if ((i & 4) == 0) {
            this.user = null;
        } else {
            this.user = user;
        }
        if ((i & 8) == 0) {
            this.ext = null;
        } else {
            this.ext = requestExt;
        }
        if ((i & 16) == 0) {
            this.request = null;
        } else {
            this.request = requestParam;
        }
    }

    public static /* synthetic */ CommonRequestBody copy$default(CommonRequestBody commonRequestBody, DeviceNode deviceNode, AppNode appNode, User user, RequestExt requestExt, RequestParam requestParam, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceNode = commonRequestBody.device;
        }
        if ((i & 2) != 0) {
            appNode = commonRequestBody.f11067app;
        }
        if ((i & 4) != 0) {
            user = commonRequestBody.user;
        }
        if ((i & 8) != 0) {
            requestExt = commonRequestBody.ext;
        }
        if ((i & 16) != 0) {
            requestParam = commonRequestBody.request;
        }
        RequestParam requestParam2 = requestParam;
        User user2 = user;
        return commonRequestBody.copy(deviceNode, appNode, user2, requestExt, requestParam2);
    }

    @JvmStatic
    public static final void write$Self(@NotNull CommonRequestBody commonRequestBody, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, DeviceNode$$serializer.INSTANCE, commonRequestBody.device);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || commonRequestBody.f11067app != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, AppNode$$serializer.INSTANCE, commonRequestBody.f11067app);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || commonRequestBody.user != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, CommonRequestBody$User$$serializer.INSTANCE, commonRequestBody.user);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || commonRequestBody.ext != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, CommonRequestBody$RequestExt$$serializer.INSTANCE, commonRequestBody.ext);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || commonRequestBody.request != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, CommonRequestBody$RequestParam$$serializer.INSTANCE, commonRequestBody.request);
        }
    }

    @NotNull
    public final DeviceNode component1() {
        return this.device;
    }

    @Nullable
    public final AppNode component2() {
        return this.f11067app;
    }

    @Nullable
    public final User component3() {
        return this.user;
    }

    @Nullable
    public final RequestExt component4() {
        return this.ext;
    }

    @Nullable
    public final RequestParam component5() {
        return this.request;
    }

    @NotNull
    public final CommonRequestBody copy(@NotNull DeviceNode deviceNode, @Nullable AppNode appNode, @Nullable User user, @Nullable RequestExt requestExt, @Nullable RequestParam requestParam) {
        return new CommonRequestBody(deviceNode, appNode, user, requestExt, requestParam);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommonRequestBody)) {
            return false;
        }
        CommonRequestBody commonRequestBody = (CommonRequestBody) obj;
        if (Intrinsics.areEqual(this.device, commonRequestBody.device) && Intrinsics.areEqual(this.f11067app, commonRequestBody.f11067app) && Intrinsics.areEqual(this.user, commonRequestBody.user) && Intrinsics.areEqual(this.ext, commonRequestBody.ext) && Intrinsics.areEqual(this.request, commonRequestBody.request)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AppNode getApp() {
        return this.f11067app;
    }

    @NotNull
    public final DeviceNode getDevice() {
        return this.device;
    }

    @Nullable
    public final RequestExt getExt() {
        return this.ext;
    }

    @Nullable
    public final RequestParam getRequest() {
        return this.request;
    }

    @Nullable
    public final User getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = this.device.hashCode() * 31;
        AppNode appNode = this.f11067app;
        int i = 0;
        if (appNode == null) {
            hashCode = 0;
        } else {
            hashCode = appNode.hashCode();
        }
        int i2 = (hashCode4 + hashCode) * 31;
        User user = this.user;
        if (user == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = user.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        RequestExt requestExt = this.ext;
        if (requestExt == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = requestExt.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        RequestParam requestParam = this.request;
        if (requestParam != null) {
            i = requestParam.hashCode();
        }
        return i4 + i;
    }

    public final void setExt(@Nullable RequestExt requestExt) {
        this.ext = requestExt;
    }

    public final void setRequest(@Nullable RequestParam requestParam) {
        this.request = requestParam;
    }

    @NotNull
    public String toString() {
        return "CommonRequestBody(device=" + this.device + ", app=" + this.f11067app + ", user=" + this.user + ", ext=" + this.ext + ", request=" + this.request + ')';
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002 !B-\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J!\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fHÇ\u0001R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\r¨\u0006\""}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;", "", "seen1", "", "width", "height", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(II)V", "getHeight$annotations", "()V", "getHeight", "()I", "getWidth$annotations", "getWidth", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class AdSizeParam {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int height;
        private final int width;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/CommonRequestBody$AdSizeParam;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AdSizeParam> serializer() {
                return CommonRequestBody$AdSizeParam$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AdSizeParam(int i, int i2) {
            this.width = i;
            this.height = i2;
        }

        public static /* synthetic */ AdSizeParam copy$default(AdSizeParam adSizeParam, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = adSizeParam.width;
            }
            if ((i3 & 2) != 0) {
                i2 = adSizeParam.height;
            }
            return adSizeParam.copy(i, i2);
        }

        @JvmStatic
        public static final void write$Self(@NotNull AdSizeParam adSizeParam, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            compositeEncoder.encodeIntElement(serialDescriptor, 0, adSizeParam.width);
            compositeEncoder.encodeIntElement(serialDescriptor, 1, adSizeParam.height);
        }

        public final int component1() {
            return this.width;
        }

        public final int component2() {
            return this.height;
        }

        @NotNull
        public final AdSizeParam copy(int i, int i2) {
            return new AdSizeParam(i, i2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdSizeParam)) {
                return false;
            }
            AdSizeParam adSizeParam = (AdSizeParam) obj;
            if (this.width == adSizeParam.width && this.height == adSizeParam.height) {
                return true;
            }
            return false;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getWidth() {
            return this.width;
        }

        public int hashCode() {
            return (this.width * 31) + this.height;
        }

        @NotNull
        public String toString() {
            return "AdSizeParam(width=" + this.width + ", height=" + this.height + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ AdSizeParam(int i, @SerialName("w") int i2, @SerialName("h") int i3, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, CommonRequestBody$AdSizeParam$$serializer.INSTANCE.getDescriptor());
            }
            this.width = i2;
            this.height = i3;
        }

        @SerialName("h")
        public static /* synthetic */ void getHeight$annotations() {
        }

        @SerialName("w")
        public static /* synthetic */ void getWidth$annotations() {
        }
    }

    public CommonRequestBody(@NotNull DeviceNode deviceNode, @Nullable AppNode appNode, @Nullable User user, @Nullable RequestExt requestExt, @Nullable RequestParam requestParam) {
        this.device = deviceNode;
        this.f11067app = appNode;
        this.user = user;
        this.ext = requestExt;
        this.request = requestParam;
    }

    public /* synthetic */ CommonRequestBody(DeviceNode deviceNode, AppNode appNode, User user, RequestExt requestExt, RequestParam requestParam, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(deviceNode, (i & 2) != 0 ? null : appNode, (i & 4) != 0 ? null : user, (i & 8) != 0 ? null : requestExt, (i & 16) != 0 ? null : requestParam);
    }
}
