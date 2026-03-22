package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.ui.AdActivity;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000201BK\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0001\u0010\f\u001a\u00020\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fB9\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003JA\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020(HÖ\u0001J!\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/HÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u00062"}, d2 = {"Lcom/vungle/ads/internal/model/RtbToken;", "", "seen1", "", "device", "Lcom/vungle/ads/internal/model/DeviceNode;", "user", "Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "ext", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/vungle/ads/internal/model/RtbRequest;", "ordinalView", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)V", "getDevice", "()Lcom/vungle/ads/internal/model/DeviceNode;", "getExt", "()Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "getOrdinalView$annotations", "()V", "getOrdinalView", "()I", "getRequest", "()Lcom/vungle/ads/internal/model/RtbRequest;", "getUser", "()Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class RtbToken {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final DeviceNode device;
    @Nullable
    private final CommonRequestBody.RequestExt ext;
    private final int ordinalView;
    @Nullable
    private final RtbRequest request;
    @Nullable
    private final CommonRequestBody.User user;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/RtbToken$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/RtbToken;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<RtbToken> serializer() {
            return RtbToken$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ RtbToken(int i, DeviceNode deviceNode, CommonRequestBody.User user, CommonRequestBody.RequestExt requestExt, RtbRequest rtbRequest, @SerialName("ordinal_view") int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (17 != (i & 17)) {
            PluginExceptionsKt.throwMissingFieldException(i, 17, RtbToken$$serializer.INSTANCE.getDescriptor());
        }
        this.device = deviceNode;
        if ((i & 2) == 0) {
            this.user = null;
        } else {
            this.user = user;
        }
        if ((i & 4) == 0) {
            this.ext = null;
        } else {
            this.ext = requestExt;
        }
        if ((i & 8) == 0) {
            this.request = null;
        } else {
            this.request = rtbRequest;
        }
        this.ordinalView = i2;
    }

    public static /* synthetic */ RtbToken copy$default(RtbToken rtbToken, DeviceNode deviceNode, CommonRequestBody.User user, CommonRequestBody.RequestExt requestExt, RtbRequest rtbRequest, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            deviceNode = rtbToken.device;
        }
        if ((i2 & 2) != 0) {
            user = rtbToken.user;
        }
        if ((i2 & 4) != 0) {
            requestExt = rtbToken.ext;
        }
        if ((i2 & 8) != 0) {
            rtbRequest = rtbToken.request;
        }
        if ((i2 & 16) != 0) {
            i = rtbToken.ordinalView;
        }
        int i3 = i;
        CommonRequestBody.RequestExt requestExt2 = requestExt;
        return rtbToken.copy(deviceNode, user, requestExt2, rtbRequest, i3);
    }

    @JvmStatic
    public static final void write$Self(@NotNull RtbToken rtbToken, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, DeviceNode$$serializer.INSTANCE, rtbToken.device);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || rtbToken.user != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, CommonRequestBody$User$$serializer.INSTANCE, rtbToken.user);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || rtbToken.ext != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, CommonRequestBody$RequestExt$$serializer.INSTANCE, rtbToken.ext);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || rtbToken.request != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, RtbRequest$$serializer.INSTANCE, rtbToken.request);
        }
        compositeEncoder.encodeIntElement(serialDescriptor, 4, rtbToken.ordinalView);
    }

    @NotNull
    public final DeviceNode component1() {
        return this.device;
    }

    @Nullable
    public final CommonRequestBody.User component2() {
        return this.user;
    }

    @Nullable
    public final CommonRequestBody.RequestExt component3() {
        return this.ext;
    }

    @Nullable
    public final RtbRequest component4() {
        return this.request;
    }

    public final int component5() {
        return this.ordinalView;
    }

    @NotNull
    public final RtbToken copy(@NotNull DeviceNode deviceNode, @Nullable CommonRequestBody.User user, @Nullable CommonRequestBody.RequestExt requestExt, @Nullable RtbRequest rtbRequest, int i) {
        return new RtbToken(deviceNode, user, requestExt, rtbRequest, i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RtbToken)) {
            return false;
        }
        RtbToken rtbToken = (RtbToken) obj;
        if (Intrinsics.areEqual(this.device, rtbToken.device) && Intrinsics.areEqual(this.user, rtbToken.user) && Intrinsics.areEqual(this.ext, rtbToken.ext) && Intrinsics.areEqual(this.request, rtbToken.request) && this.ordinalView == rtbToken.ordinalView) {
            return true;
        }
        return false;
    }

    @NotNull
    public final DeviceNode getDevice() {
        return this.device;
    }

    @Nullable
    public final CommonRequestBody.RequestExt getExt() {
        return this.ext;
    }

    public final int getOrdinalView() {
        return this.ordinalView;
    }

    @Nullable
    public final RtbRequest getRequest() {
        return this.request;
    }

    @Nullable
    public final CommonRequestBody.User getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.device.hashCode() * 31;
        CommonRequestBody.User user = this.user;
        int i = 0;
        if (user == null) {
            hashCode = 0;
        } else {
            hashCode = user.hashCode();
        }
        int i2 = (hashCode3 + hashCode) * 31;
        CommonRequestBody.RequestExt requestExt = this.ext;
        if (requestExt == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = requestExt.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        RtbRequest rtbRequest = this.request;
        if (rtbRequest != null) {
            i = rtbRequest.hashCode();
        }
        return ((i3 + i) * 31) + this.ordinalView;
    }

    @NotNull
    public String toString() {
        return "RtbToken(device=" + this.device + ", user=" + this.user + ", ext=" + this.ext + ", request=" + this.request + ", ordinalView=" + this.ordinalView + ')';
    }

    public RtbToken(@NotNull DeviceNode deviceNode, @Nullable CommonRequestBody.User user, @Nullable CommonRequestBody.RequestExt requestExt, @Nullable RtbRequest rtbRequest, int i) {
        this.device = deviceNode;
        this.user = user;
        this.ext = requestExt;
        this.request = rtbRequest;
        this.ordinalView = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ RtbToken(com.vungle.ads.internal.model.DeviceNode r2, com.vungle.ads.internal.model.CommonRequestBody.User r3, com.vungle.ads.internal.model.CommonRequestBody.RequestExt r4, com.vungle.ads.internal.model.RtbRequest r5, int r6, int r7, kotlin.jvm.internal.DefaultConstructorMarker r8) {
        /*
            r1 = this;
            r8 = r7 & 2
            r0 = 0
            if (r8 == 0) goto L6
            r3 = r0
        L6:
            r8 = r7 & 4
            if (r8 == 0) goto Lb
            r4 = r0
        Lb:
            r7 = r7 & 8
            if (r7 == 0) goto L16
            r7 = r6
            r6 = r0
        L11:
            r5 = r4
            r4 = r3
            r3 = r2
            r2 = r1
            goto L19
        L16:
            r7 = r6
            r6 = r5
            goto L11
        L19:
            r2.<init>(r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.model.RtbToken.<init>(com.vungle.ads.internal.model.DeviceNode, com.vungle.ads.internal.model.CommonRequestBody$User, com.vungle.ads.internal.model.CommonRequestBody$RequestExt, com.vungle.ads.internal.model.RtbRequest, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @SerialName("ordinal_view")
    public static /* synthetic */ void getOrdinalView$annotations() {
    }
}
