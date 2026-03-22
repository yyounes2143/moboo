package com.vungle.ads.internal.model;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 I2\u00020\u0001:\u0003HIJB\u0083\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013Bq\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0014J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u00101\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0086\u0001\u0010:\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020\u0003HÖ\u0001J\t\u0010@\u001a\u00020\u0005HÖ\u0001J!\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u00002\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GHÇ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010!R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0016R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0016\"\u0004\b,\u0010!R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001c\"\u0004\b.\u0010\u001e¨\u0006K"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode;", "", "seen1", "", "make", "", "model", "osv", "carrier", "os", "w", "h", "ua", "ifa", "lmt", "ext", "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V", "getCarrier", "()Ljava/lang/String;", "getExt", "()Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "setExt", "(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V", "getH", "()I", "setH", "(I)V", "getIfa", "setIfa", "(Ljava/lang/String;)V", "getLmt", "()Ljava/lang/Integer;", "setLmt", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMake", "getModel", "getOs", "getOsv", "getUa", "setUa", "getW", "setW", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)Lcom/vungle/ads/internal/model/DeviceNode;", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "VungleExt", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class DeviceNode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String carrier;
    @Nullable
    private VungleExt ext;
    private int h;
    @Nullable
    private String ifa;
    @Nullable
    private Integer lmt;
    @NotNull
    private final String make;
    @NotNull
    private final String model;
    @NotNull
    private final String os;
    @NotNull
    private final String osv;
    @Nullable
    private String ua;
    private int w;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<DeviceNode> serializer() {
            return DeviceNode$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bi\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u008f\u00012\u00020\u0001:\u0004\u008e\u0001\u008f\u0001B\u0085\u0002\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0001\u0010\f\u001a\u00020\u0003\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0001\u0010\u0012\u001a\u00020\n\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0014\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0016\u001a\u00020\u0005\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010\u001fBñ\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\n\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010 J\t\u0010l\u001a\u00020\u0005HÆ\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010o\u001a\u00020\nHÆ\u0003J\t\u0010p\u001a\u00020\u0003HÆ\u0003J\t\u0010q\u001a\u00020\u0005HÆ\u0003J\t\u0010r\u001a\u00020\u0003HÆ\u0003J\t\u0010s\u001a\u00020\u0005HÆ\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010v\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0002\u0010VJ\u000b\u0010w\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010x\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0002\u0010VJ\u0010\u0010y\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0002\u0010VJ\u0010\u0010z\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010,J\t\u0010{\u001a\u00020\nHÆ\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010}\u001a\u00020\u0003HÆ\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jü\u0001\u0010\u0081\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0012\u001a\u00020\n2\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00052\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001aHÆ\u0001¢\u0006\u0003\u0010\u0082\u0001J\u0015\u0010\u0083\u0001\u001a\u00020\u00052\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0003HÖ\u0001J\n\u0010\u0086\u0001\u001a\u00020\u0007HÖ\u0001J(\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0089\u0001\u001a\u00020\u00002\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001HÇ\u0001R&\u0010\u0018\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R&\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b'\u0010\"\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R(\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010/\u0012\u0004\b*\u0010\"\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b0\u0010\"\u001a\u0004\b1\u00102\"\u0004\b3\u00104R$\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b5\u0010\"\u001a\u0004\b6\u00107\"\u0004\b8\u00109R&\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b:\u0010\"\u001a\u0004\b;\u0010$\"\u0004\b<\u0010&R&\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b=\u0010\"\u001a\u0004\b>\u0010$\"\u0004\b?\u0010&R&\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b@\u0010\"\u001a\u0004\bA\u0010$\"\u0004\bB\u0010&R&\u0010\u0017\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bC\u0010\"\u001a\u0004\bD\u0010$\"\u0004\bE\u0010&R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bF\u0010\"\u001a\u0004\b\u0004\u0010G\"\u0004\bH\u0010IR$\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bJ\u0010\"\u001a\u0004\b\u0016\u0010G\"\u0004\bK\u0010IR$\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bL\u0010\"\u001a\u0004\b\u0014\u0010G\"\u0004\bM\u0010IR&\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bN\u0010\"\u001a\u0004\bO\u0010$\"\u0004\bP\u0010&R&\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bQ\u0010\"\u001a\u0004\bR\u0010$\"\u0004\bS\u0010&R(\u0010\u001c\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010Y\u0012\u0004\bT\u0010\"\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR(\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010Y\u0012\u0004\bZ\u0010\"\u001a\u0004\b[\u0010V\"\u0004\b\\\u0010XR(\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010Y\u0012\u0004\b]\u0010\"\u001a\u0004\b^\u0010V\"\u0004\b_\u0010XR$\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b`\u0010\"\u001a\u0004\ba\u00107\"\u0004\bb\u00109R$\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bc\u0010\"\u001a\u0004\bd\u00107\"\u0004\be\u00109R&\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bf\u0010\"\u001a\u0004\bg\u0010$\"\u0004\bh\u0010&R$\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bi\u0010\"\u001a\u0004\bj\u00102\"\u0004\bk\u00104¨\u0006\u0090\u0001"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "", "seen1", "", "isGooglePlayServicesAvailable", "", "appSetId", "", "appSetIdScope", "batteryLevel", "", "batteryState", "batterySaverEnabled", "connectionType", "connectionTypeDetail", "locale", "language", RemoteConfigConstants.RequestFieldKey.TIME_ZONE, "volumeLevel", "soundEnabled", "isTv", "sdCardAvailable", "isSideloadEnabled", "gaid", "amazonAdvertisingId", "oit", "", "ort", "obt", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "getAmazonAdvertisingId$annotations", "()V", "getAmazonAdvertisingId", "()Ljava/lang/String;", "setAmazonAdvertisingId", "(Ljava/lang/String;)V", "getAppSetId$annotations", "getAppSetId", "setAppSetId", "getAppSetIdScope$annotations", "getAppSetIdScope", "()Ljava/lang/Integer;", "setAppSetIdScope", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getBatteryLevel$annotations", "getBatteryLevel", "()F", "setBatteryLevel", "(F)V", "getBatterySaverEnabled$annotations", "getBatterySaverEnabled", "()I", "setBatterySaverEnabled", "(I)V", "getBatteryState$annotations", "getBatteryState", "setBatteryState", "getConnectionType$annotations", "getConnectionType", "setConnectionType", "getConnectionTypeDetail$annotations", "getConnectionTypeDetail", "setConnectionTypeDetail", "getGaid$annotations", "getGaid", "setGaid", "isGooglePlayServicesAvailable$annotations", "()Z", "setGooglePlayServicesAvailable", "(Z)V", "isSideloadEnabled$annotations", "setSideloadEnabled", "isTv$annotations", "setTv", "getLanguage$annotations", "getLanguage", "setLanguage", "getLocale$annotations", "getLocale", "setLocale", "getObt$annotations", "getObt", "()Ljava/lang/Long;", "setObt", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getOit$annotations", "getOit", "setOit", "getOrt$annotations", "getOrt", "setOrt", "getSdCardAvailable$annotations", "getSdCardAvailable", "setSdCardAvailable", "getSoundEnabled$annotations", "getSoundEnabled", "setSoundEnabled", "getTimeZone$annotations", "getTimeZone", "setTimeZone", "getVolumeLevel$annotations", "getVolumeLevel", "setVolumeLevel", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class VungleExt {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private String amazonAdvertisingId;
        @Nullable
        private String appSetId;
        @Nullable
        private Integer appSetIdScope;
        private float batteryLevel;
        private int batterySaverEnabled;
        @Nullable
        private String batteryState;
        @Nullable
        private String connectionType;
        @Nullable
        private String connectionTypeDetail;
        @Nullable
        private String gaid;
        private boolean isGooglePlayServicesAvailable;
        private boolean isSideloadEnabled;
        private boolean isTv;
        @Nullable
        private String language;
        @Nullable
        private String locale;
        @Nullable
        private Long obt;
        @Nullable
        private Long oit;
        @Nullable
        private Long ort;
        private int sdCardAvailable;
        private int soundEnabled;
        @Nullable
        private String timeZone;
        private float volumeLevel;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<VungleExt> serializer() {
                return DeviceNode$VungleExt$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public VungleExt() {
            this(false, (String) null, (Integer) null, 0.0f, (String) null, 0, (String) null, (String) null, (String) null, (String) null, (String) null, 0.0f, 0, false, 0, false, (String) null, (String) null, (Long) null, (Long) null, (Long) null, 2097151, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ VungleExt copy$default(VungleExt vungleExt, boolean z, String str, Integer num, float f, String str2, int i, String str3, String str4, String str5, String str6, String str7, float f2, int i2, boolean z2, int i3, boolean z3, String str8, String str9, Long l, Long l2, Long l3, int i4, Object obj) {
            Long l4;
            Long l5;
            boolean z4 = (i4 & 1) != 0 ? vungleExt.isGooglePlayServicesAvailable : z;
            String str10 = (i4 & 2) != 0 ? vungleExt.appSetId : str;
            Integer num2 = (i4 & 4) != 0 ? vungleExt.appSetIdScope : num;
            float f3 = (i4 & 8) != 0 ? vungleExt.batteryLevel : f;
            String str11 = (i4 & 16) != 0 ? vungleExt.batteryState : str2;
            int i5 = (i4 & 32) != 0 ? vungleExt.batterySaverEnabled : i;
            String str12 = (i4 & 64) != 0 ? vungleExt.connectionType : str3;
            String str13 = (i4 & 128) != 0 ? vungleExt.connectionTypeDetail : str4;
            String str14 = (i4 & 256) != 0 ? vungleExt.locale : str5;
            String str15 = (i4 & 512) != 0 ? vungleExt.language : str6;
            String str16 = (i4 & 1024) != 0 ? vungleExt.timeZone : str7;
            float f4 = (i4 & 2048) != 0 ? vungleExt.volumeLevel : f2;
            int i6 = (i4 & 4096) != 0 ? vungleExt.soundEnabled : i2;
            boolean z5 = (i4 & 8192) != 0 ? vungleExt.isTv : z2;
            boolean z6 = z4;
            int i7 = (i4 & 16384) != 0 ? vungleExt.sdCardAvailable : i3;
            boolean z7 = (i4 & 32768) != 0 ? vungleExt.isSideloadEnabled : z3;
            String str17 = (i4 & 65536) != 0 ? vungleExt.gaid : str8;
            String str18 = (i4 & 131072) != 0 ? vungleExt.amazonAdvertisingId : str9;
            Long l6 = (i4 & 262144) != 0 ? vungleExt.oit : l;
            Long l7 = (i4 & 524288) != 0 ? vungleExt.ort : l2;
            if ((i4 & 1048576) != 0) {
                l5 = l7;
                l4 = vungleExt.obt;
            } else {
                l4 = l3;
                l5 = l7;
            }
            return vungleExt.copy(z6, str10, num2, f3, str11, i5, str12, str13, str14, str15, str16, f4, i6, z5, i7, z7, str17, str18, l6, l5, l4);
        }

        @JvmStatic
        public static final void write$Self(@NotNull VungleExt vungleExt, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || vungleExt.isGooglePlayServicesAvailable) {
                compositeEncoder.encodeBooleanElement(serialDescriptor, 0, vungleExt.isGooglePlayServicesAvailable);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || vungleExt.appSetId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, vungleExt.appSetId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || vungleExt.appSetIdScope != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, vungleExt.appSetIdScope);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || !Intrinsics.areEqual((Object) Float.valueOf(vungleExt.batteryLevel), (Object) Float.valueOf(0.0f))) {
                compositeEncoder.encodeFloatElement(serialDescriptor, 3, vungleExt.batteryLevel);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || vungleExt.batteryState != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, vungleExt.batteryState);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || vungleExt.batterySaverEnabled != 0) {
                compositeEncoder.encodeIntElement(serialDescriptor, 5, vungleExt.batterySaverEnabled);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) || vungleExt.connectionType != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, vungleExt.connectionType);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 7) || vungleExt.connectionTypeDetail != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, vungleExt.connectionTypeDetail);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 8) || vungleExt.locale != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, vungleExt.locale);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 9) || vungleExt.language != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, vungleExt.language);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 10) || vungleExt.timeZone != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, vungleExt.timeZone);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 11) || !Intrinsics.areEqual((Object) Float.valueOf(vungleExt.volumeLevel), (Object) Float.valueOf(0.0f))) {
                compositeEncoder.encodeFloatElement(serialDescriptor, 11, vungleExt.volumeLevel);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 12) || vungleExt.soundEnabled != 1) {
                compositeEncoder.encodeIntElement(serialDescriptor, 12, vungleExt.soundEnabled);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 13) || vungleExt.isTv) {
                compositeEncoder.encodeBooleanElement(serialDescriptor, 13, vungleExt.isTv);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 14) || vungleExt.sdCardAvailable != 1) {
                compositeEncoder.encodeIntElement(serialDescriptor, 14, vungleExt.sdCardAvailable);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 15) || vungleExt.isSideloadEnabled) {
                compositeEncoder.encodeBooleanElement(serialDescriptor, 15, vungleExt.isSideloadEnabled);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 16) || vungleExt.gaid != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 16, StringSerializer.INSTANCE, vungleExt.gaid);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 17) || vungleExt.amazonAdvertisingId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 17, StringSerializer.INSTANCE, vungleExt.amazonAdvertisingId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 18) || vungleExt.oit != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 18, LongSerializer.INSTANCE, vungleExt.oit);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 19) || vungleExt.ort != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 19, LongSerializer.INSTANCE, vungleExt.ort);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 20) || vungleExt.obt != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 20, LongSerializer.INSTANCE, vungleExt.obt);
            }
        }

        public final boolean component1() {
            return this.isGooglePlayServicesAvailable;
        }

        @Nullable
        public final String component10() {
            return this.language;
        }

        @Nullable
        public final String component11() {
            return this.timeZone;
        }

        public final float component12() {
            return this.volumeLevel;
        }

        public final int component13() {
            return this.soundEnabled;
        }

        public final boolean component14() {
            return this.isTv;
        }

        public final int component15() {
            return this.sdCardAvailable;
        }

        public final boolean component16() {
            return this.isSideloadEnabled;
        }

        @Nullable
        public final String component17() {
            return this.gaid;
        }

        @Nullable
        public final String component18() {
            return this.amazonAdvertisingId;
        }

        @Nullable
        public final Long component19() {
            return this.oit;
        }

        @Nullable
        public final String component2() {
            return this.appSetId;
        }

        @Nullable
        public final Long component20() {
            return this.ort;
        }

        @Nullable
        public final Long component21() {
            return this.obt;
        }

        @Nullable
        public final Integer component3() {
            return this.appSetIdScope;
        }

        public final float component4() {
            return this.batteryLevel;
        }

        @Nullable
        public final String component5() {
            return this.batteryState;
        }

        public final int component6() {
            return this.batterySaverEnabled;
        }

        @Nullable
        public final String component7() {
            return this.connectionType;
        }

        @Nullable
        public final String component8() {
            return this.connectionTypeDetail;
        }

        @Nullable
        public final String component9() {
            return this.locale;
        }

        @NotNull
        public final VungleExt copy(boolean z, @Nullable String str, @Nullable Integer num, float f, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, float f2, int i2, boolean z2, int i3, boolean z3, @Nullable String str8, @Nullable String str9, @Nullable Long l, @Nullable Long l2, @Nullable Long l3) {
            return new VungleExt(z, str, num, f, str2, i, str3, str4, str5, str6, str7, f2, i2, z2, i3, z3, str8, str9, l, l2, l3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VungleExt)) {
                return false;
            }
            VungleExt vungleExt = (VungleExt) obj;
            if (this.isGooglePlayServicesAvailable == vungleExt.isGooglePlayServicesAvailable && Intrinsics.areEqual(this.appSetId, vungleExt.appSetId) && Intrinsics.areEqual(this.appSetIdScope, vungleExt.appSetIdScope) && Intrinsics.areEqual((Object) Float.valueOf(this.batteryLevel), (Object) Float.valueOf(vungleExt.batteryLevel)) && Intrinsics.areEqual(this.batteryState, vungleExt.batteryState) && this.batterySaverEnabled == vungleExt.batterySaverEnabled && Intrinsics.areEqual(this.connectionType, vungleExt.connectionType) && Intrinsics.areEqual(this.connectionTypeDetail, vungleExt.connectionTypeDetail) && Intrinsics.areEqual(this.locale, vungleExt.locale) && Intrinsics.areEqual(this.language, vungleExt.language) && Intrinsics.areEqual(this.timeZone, vungleExt.timeZone) && Intrinsics.areEqual((Object) Float.valueOf(this.volumeLevel), (Object) Float.valueOf(vungleExt.volumeLevel)) && this.soundEnabled == vungleExt.soundEnabled && this.isTv == vungleExt.isTv && this.sdCardAvailable == vungleExt.sdCardAvailable && this.isSideloadEnabled == vungleExt.isSideloadEnabled && Intrinsics.areEqual(this.gaid, vungleExt.gaid) && Intrinsics.areEqual(this.amazonAdvertisingId, vungleExt.amazonAdvertisingId) && Intrinsics.areEqual(this.oit, vungleExt.oit) && Intrinsics.areEqual(this.ort, vungleExt.ort) && Intrinsics.areEqual(this.obt, vungleExt.obt)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getAmazonAdvertisingId() {
            return this.amazonAdvertisingId;
        }

        @Nullable
        public final String getAppSetId() {
            return this.appSetId;
        }

        @Nullable
        public final Integer getAppSetIdScope() {
            return this.appSetIdScope;
        }

        public final float getBatteryLevel() {
            return this.batteryLevel;
        }

        public final int getBatterySaverEnabled() {
            return this.batterySaverEnabled;
        }

        @Nullable
        public final String getBatteryState() {
            return this.batteryState;
        }

        @Nullable
        public final String getConnectionType() {
            return this.connectionType;
        }

        @Nullable
        public final String getConnectionTypeDetail() {
            return this.connectionTypeDetail;
        }

        @Nullable
        public final String getGaid() {
            return this.gaid;
        }

        @Nullable
        public final String getLanguage() {
            return this.language;
        }

        @Nullable
        public final String getLocale() {
            return this.locale;
        }

        @Nullable
        public final Long getObt() {
            return this.obt;
        }

        @Nullable
        public final Long getOit() {
            return this.oit;
        }

        @Nullable
        public final Long getOrt() {
            return this.ort;
        }

        public final int getSdCardAvailable() {
            return this.sdCardAvailable;
        }

        public final int getSoundEnabled() {
            return this.soundEnabled;
        }

        @Nullable
        public final String getTimeZone() {
            return this.timeZone;
        }

        public final float getVolumeLevel() {
            return this.volumeLevel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v42 */
        /* JADX WARN: Type inference failed for: r0v43 */
        /* JADX WARN: Type inference failed for: r2v30, types: [boolean] */
        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7;
            int hashCode8;
            int hashCode9;
            int hashCode10;
            int hashCode11;
            int hashCode12;
            boolean z = this.isGooglePlayServicesAvailable;
            int i = 1;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            int i2 = r0 * 31;
            String str = this.appSetId;
            int i3 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i4 = (i2 + hashCode) * 31;
            Integer num = this.appSetIdScope;
            if (num == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = num.hashCode();
            }
            int floatToIntBits = (((i4 + hashCode2) * 31) + Float.floatToIntBits(this.batteryLevel)) * 31;
            String str2 = this.batteryState;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int i5 = (((floatToIntBits + hashCode3) * 31) + this.batterySaverEnabled) * 31;
            String str3 = this.connectionType;
            if (str3 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str3.hashCode();
            }
            int i6 = (i5 + hashCode4) * 31;
            String str4 = this.connectionTypeDetail;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i7 = (i6 + hashCode5) * 31;
            String str5 = this.locale;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i8 = (i7 + hashCode6) * 31;
            String str6 = this.language;
            if (str6 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = str6.hashCode();
            }
            int i9 = (i8 + hashCode7) * 31;
            String str7 = this.timeZone;
            if (str7 == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = str7.hashCode();
            }
            int floatToIntBits2 = (((((i9 + hashCode8) * 31) + Float.floatToIntBits(this.volumeLevel)) * 31) + this.soundEnabled) * 31;
            ?? r2 = this.isTv;
            int i10 = r2;
            if (r2 != 0) {
                i10 = 1;
            }
            int i11 = (((floatToIntBits2 + i10) * 31) + this.sdCardAvailable) * 31;
            boolean z2 = this.isSideloadEnabled;
            if (!z2) {
                i = z2 ? 1 : 0;
            }
            int i12 = (i11 + i) * 31;
            String str8 = this.gaid;
            if (str8 == null) {
                hashCode9 = 0;
            } else {
                hashCode9 = str8.hashCode();
            }
            int i13 = (i12 + hashCode9) * 31;
            String str9 = this.amazonAdvertisingId;
            if (str9 == null) {
                hashCode10 = 0;
            } else {
                hashCode10 = str9.hashCode();
            }
            int i14 = (i13 + hashCode10) * 31;
            Long l = this.oit;
            if (l == null) {
                hashCode11 = 0;
            } else {
                hashCode11 = l.hashCode();
            }
            int i15 = (i14 + hashCode11) * 31;
            Long l2 = this.ort;
            if (l2 == null) {
                hashCode12 = 0;
            } else {
                hashCode12 = l2.hashCode();
            }
            int i16 = (i15 + hashCode12) * 31;
            Long l3 = this.obt;
            if (l3 != null) {
                i3 = l3.hashCode();
            }
            return i16 + i3;
        }

        public final boolean isGooglePlayServicesAvailable() {
            return this.isGooglePlayServicesAvailable;
        }

        public final boolean isSideloadEnabled() {
            return this.isSideloadEnabled;
        }

        public final boolean isTv() {
            return this.isTv;
        }

        public final void setAmazonAdvertisingId(@Nullable String str) {
            this.amazonAdvertisingId = str;
        }

        public final void setAppSetId(@Nullable String str) {
            this.appSetId = str;
        }

        public final void setAppSetIdScope(@Nullable Integer num) {
            this.appSetIdScope = num;
        }

        public final void setBatteryLevel(float f) {
            this.batteryLevel = f;
        }

        public final void setBatterySaverEnabled(int i) {
            this.batterySaverEnabled = i;
        }

        public final void setBatteryState(@Nullable String str) {
            this.batteryState = str;
        }

        public final void setConnectionType(@Nullable String str) {
            this.connectionType = str;
        }

        public final void setConnectionTypeDetail(@Nullable String str) {
            this.connectionTypeDetail = str;
        }

        public final void setGaid(@Nullable String str) {
            this.gaid = str;
        }

        public final void setGooglePlayServicesAvailable(boolean z) {
            this.isGooglePlayServicesAvailable = z;
        }

        public final void setLanguage(@Nullable String str) {
            this.language = str;
        }

        public final void setLocale(@Nullable String str) {
            this.locale = str;
        }

        public final void setObt(@Nullable Long l) {
            this.obt = l;
        }

        public final void setOit(@Nullable Long l) {
            this.oit = l;
        }

        public final void setOrt(@Nullable Long l) {
            this.ort = l;
        }

        public final void setSdCardAvailable(int i) {
            this.sdCardAvailable = i;
        }

        public final void setSideloadEnabled(boolean z) {
            this.isSideloadEnabled = z;
        }

        public final void setSoundEnabled(int i) {
            this.soundEnabled = i;
        }

        public final void setTimeZone(@Nullable String str) {
            this.timeZone = str;
        }

        public final void setTv(boolean z) {
            this.isTv = z;
        }

        public final void setVolumeLevel(float f) {
            this.volumeLevel = f;
        }

        @NotNull
        public String toString() {
            return "VungleExt(isGooglePlayServicesAvailable=" + this.isGooglePlayServicesAvailable + ", appSetId=" + this.appSetId + ", appSetIdScope=" + this.appSetIdScope + ", batteryLevel=" + this.batteryLevel + ", batteryState=" + this.batteryState + ", batterySaverEnabled=" + this.batterySaverEnabled + ", connectionType=" + this.connectionType + ", connectionTypeDetail=" + this.connectionTypeDetail + ", locale=" + this.locale + ", language=" + this.language + ", timeZone=" + this.timeZone + ", volumeLevel=" + this.volumeLevel + ", soundEnabled=" + this.soundEnabled + ", isTv=" + this.isTv + ", sdCardAvailable=" + this.sdCardAvailable + ", isSideloadEnabled=" + this.isSideloadEnabled + ", gaid=" + this.gaid + ", amazonAdvertisingId=" + this.amazonAdvertisingId + ", oit=" + this.oit + ", ort=" + this.ort + ", obt=" + this.obt + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ VungleExt(int i, @SerialName("is_google_play_services_available") boolean z, @SerialName("app_set_id") String str, @SerialName("app_set_id_scope") Integer num, @SerialName("battery_level") float f, @SerialName("battery_state") String str2, @SerialName("battery_saver_enabled") int i2, @SerialName("connection_type") String str3, @SerialName("connection_type_detail") String str4, @SerialName("locale") String str5, @SerialName("language") String str6, @SerialName("time_zone") String str7, @SerialName("volume_level") float f2, @SerialName("sound_enabled") int i3, @SerialName("is_tv") boolean z2, @SerialName("sd_card_available") int i4, @SerialName("is_sideload_enabled") boolean z3, @SerialName("gaid") String str8, @SerialName("amazon_advertising_id") String str9, @SerialName("oit") Long l, @SerialName("ort") Long l2, @SerialName("obt") Long l3, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.isGooglePlayServicesAvailable = false;
            } else {
                this.isGooglePlayServicesAvailable = z;
            }
            if ((i & 2) == 0) {
                this.appSetId = null;
            } else {
                this.appSetId = str;
            }
            if ((i & 4) == 0) {
                this.appSetIdScope = null;
            } else {
                this.appSetIdScope = num;
            }
            if ((i & 8) == 0) {
                this.batteryLevel = 0.0f;
            } else {
                this.batteryLevel = f;
            }
            if ((i & 16) == 0) {
                this.batteryState = null;
            } else {
                this.batteryState = str2;
            }
            if ((i & 32) == 0) {
                this.batterySaverEnabled = 0;
            } else {
                this.batterySaverEnabled = i2;
            }
            if ((i & 64) == 0) {
                this.connectionType = null;
            } else {
                this.connectionType = str3;
            }
            if ((i & 128) == 0) {
                this.connectionTypeDetail = null;
            } else {
                this.connectionTypeDetail = str4;
            }
            if ((i & 256) == 0) {
                this.locale = null;
            } else {
                this.locale = str5;
            }
            if ((i & 512) == 0) {
                this.language = null;
            } else {
                this.language = str6;
            }
            if ((i & 1024) == 0) {
                this.timeZone = null;
            } else {
                this.timeZone = str7;
            }
            if ((i & 2048) == 0) {
                this.volumeLevel = 0.0f;
            } else {
                this.volumeLevel = f2;
            }
            if ((i & 4096) == 0) {
                this.soundEnabled = 1;
            } else {
                this.soundEnabled = i3;
            }
            if ((i & 8192) == 0) {
                this.isTv = false;
            } else {
                this.isTv = z2;
            }
            if ((i & 16384) == 0) {
                this.sdCardAvailable = 1;
            } else {
                this.sdCardAvailable = i4;
            }
            if ((32768 & i) == 0) {
                this.isSideloadEnabled = false;
            } else {
                this.isSideloadEnabled = z3;
            }
            if ((65536 & i) == 0) {
                this.gaid = null;
            } else {
                this.gaid = str8;
            }
            if ((131072 & i) == 0) {
                this.amazonAdvertisingId = null;
            } else {
                this.amazonAdvertisingId = str9;
            }
            if ((262144 & i) == 0) {
                this.oit = null;
            } else {
                this.oit = l;
            }
            if ((524288 & i) == 0) {
                this.ort = null;
            } else {
                this.ort = l2;
            }
            if ((i & 1048576) == 0) {
                this.obt = null;
            } else {
                this.obt = l3;
            }
        }

        public VungleExt(boolean z, @Nullable String str, @Nullable Integer num, float f, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, float f2, int i2, boolean z2, int i3, boolean z3, @Nullable String str8, @Nullable String str9, @Nullable Long l, @Nullable Long l2, @Nullable Long l3) {
            this.isGooglePlayServicesAvailable = z;
            this.appSetId = str;
            this.appSetIdScope = num;
            this.batteryLevel = f;
            this.batteryState = str2;
            this.batterySaverEnabled = i;
            this.connectionType = str3;
            this.connectionTypeDetail = str4;
            this.locale = str5;
            this.language = str6;
            this.timeZone = str7;
            this.volumeLevel = f2;
            this.soundEnabled = i2;
            this.isTv = z2;
            this.sdCardAvailable = i3;
            this.isSideloadEnabled = z3;
            this.gaid = str8;
            this.amazonAdvertisingId = str9;
            this.oit = l;
            this.ort = l2;
            this.obt = l3;
        }

        @SerialName("amazon_advertising_id")
        public static /* synthetic */ void getAmazonAdvertisingId$annotations() {
        }

        @SerialName("app_set_id")
        public static /* synthetic */ void getAppSetId$annotations() {
        }

        @SerialName("app_set_id_scope")
        public static /* synthetic */ void getAppSetIdScope$annotations() {
        }

        @SerialName("battery_level")
        public static /* synthetic */ void getBatteryLevel$annotations() {
        }

        @SerialName("battery_saver_enabled")
        public static /* synthetic */ void getBatterySaverEnabled$annotations() {
        }

        @SerialName("battery_state")
        public static /* synthetic */ void getBatteryState$annotations() {
        }

        @SerialName("connection_type")
        public static /* synthetic */ void getConnectionType$annotations() {
        }

        @SerialName("connection_type_detail")
        public static /* synthetic */ void getConnectionTypeDetail$annotations() {
        }

        @SerialName("gaid")
        public static /* synthetic */ void getGaid$annotations() {
        }

        @SerialName("language")
        public static /* synthetic */ void getLanguage$annotations() {
        }

        @SerialName("locale")
        public static /* synthetic */ void getLocale$annotations() {
        }

        @SerialName("obt")
        public static /* synthetic */ void getObt$annotations() {
        }

        @SerialName("oit")
        public static /* synthetic */ void getOit$annotations() {
        }

        @SerialName("ort")
        public static /* synthetic */ void getOrt$annotations() {
        }

        @SerialName("sd_card_available")
        public static /* synthetic */ void getSdCardAvailable$annotations() {
        }

        @SerialName("sound_enabled")
        public static /* synthetic */ void getSoundEnabled$annotations() {
        }

        @SerialName("time_zone")
        public static /* synthetic */ void getTimeZone$annotations() {
        }

        @SerialName("volume_level")
        public static /* synthetic */ void getVolumeLevel$annotations() {
        }

        @SerialName("is_google_play_services_available")
        public static /* synthetic */ void isGooglePlayServicesAvailable$annotations() {
        }

        @SerialName("is_sideload_enabled")
        public static /* synthetic */ void isSideloadEnabled$annotations() {
        }

        @SerialName("is_tv")
        public static /* synthetic */ void isTv$annotations() {
        }

        public /* synthetic */ VungleExt(boolean z, String str, Integer num, float f, String str2, int i, String str3, String str4, String str5, String str6, String str7, float f2, int i2, boolean z2, int i3, boolean z3, String str8, String str9, Long l, Long l2, Long l3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? false : z, (i4 & 2) != 0 ? null : str, (i4 & 4) != 0 ? null : num, (i4 & 8) != 0 ? 0.0f : f, (i4 & 16) != 0 ? null : str2, (i4 & 32) != 0 ? 0 : i, (i4 & 64) != 0 ? null : str3, (i4 & 128) != 0 ? null : str4, (i4 & 256) != 0 ? null : str5, (i4 & 512) != 0 ? null : str6, (i4 & 1024) != 0 ? null : str7, (i4 & 2048) == 0 ? f2 : 0.0f, (i4 & 4096) != 0 ? 1 : i2, (i4 & 8192) != 0 ? false : z2, (i4 & 16384) == 0 ? i3 : 1, (32768 & i4) != 0 ? false : z3, (i4 & 65536) != 0 ? null : str8, (i4 & 131072) != 0 ? null : str9, (i4 & 262144) != 0 ? null : l, (i4 & 524288) != 0 ? null : l2, (i4 & 1048576) != 0 ? null : l3);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ DeviceNode(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, String str6, String str7, Integer num, VungleExt vungleExt, SerializationConstructorMarker serializationConstructorMarker) {
        if (119 != (i & 119)) {
            PluginExceptionsKt.throwMissingFieldException(i, 119, DeviceNode$$serializer.INSTANCE.getDescriptor());
        }
        this.make = str;
        this.model = str2;
        this.osv = str3;
        if ((i & 8) == 0) {
            this.carrier = null;
        } else {
            this.carrier = str4;
        }
        this.os = str5;
        this.w = i2;
        this.h = i3;
        if ((i & 128) == 0) {
            this.ua = null;
        } else {
            this.ua = str6;
        }
        if ((i & 256) == 0) {
            this.ifa = null;
        } else {
            this.ifa = str7;
        }
        if ((i & 512) == 0) {
            this.lmt = null;
        } else {
            this.lmt = num;
        }
        if ((i & 1024) == 0) {
            this.ext = null;
        } else {
            this.ext = vungleExt;
        }
    }

    public static /* synthetic */ DeviceNode copy$default(DeviceNode deviceNode, String str, String str2, String str3, String str4, String str5, int i, int i2, String str6, String str7, Integer num, VungleExt vungleExt, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = deviceNode.make;
        }
        if ((i3 & 2) != 0) {
            str2 = deviceNode.model;
        }
        if ((i3 & 4) != 0) {
            str3 = deviceNode.osv;
        }
        if ((i3 & 8) != 0) {
            str4 = deviceNode.carrier;
        }
        if ((i3 & 16) != 0) {
            str5 = deviceNode.os;
        }
        if ((i3 & 32) != 0) {
            i = deviceNode.w;
        }
        if ((i3 & 64) != 0) {
            i2 = deviceNode.h;
        }
        if ((i3 & 128) != 0) {
            str6 = deviceNode.ua;
        }
        if ((i3 & 256) != 0) {
            str7 = deviceNode.ifa;
        }
        if ((i3 & 512) != 0) {
            num = deviceNode.lmt;
        }
        if ((i3 & 1024) != 0) {
            vungleExt = deviceNode.ext;
        }
        Integer num2 = num;
        VungleExt vungleExt2 = vungleExt;
        String str8 = str6;
        String str9 = str7;
        int i4 = i;
        int i5 = i2;
        String str10 = str5;
        String str11 = str3;
        return deviceNode.copy(str, str2, str11, str4, str10, i4, i5, str8, str9, num2, vungleExt2);
    }

    @JvmStatic
    public static final void write$Self(@NotNull DeviceNode deviceNode, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeStringElement(serialDescriptor, 0, deviceNode.make);
        compositeEncoder.encodeStringElement(serialDescriptor, 1, deviceNode.model);
        compositeEncoder.encodeStringElement(serialDescriptor, 2, deviceNode.osv);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || deviceNode.carrier != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, deviceNode.carrier);
        }
        compositeEncoder.encodeStringElement(serialDescriptor, 4, deviceNode.os);
        compositeEncoder.encodeIntElement(serialDescriptor, 5, deviceNode.w);
        compositeEncoder.encodeIntElement(serialDescriptor, 6, deviceNode.h);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 7) || deviceNode.ua != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, deviceNode.ua);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 8) || deviceNode.ifa != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, deviceNode.ifa);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 9) || deviceNode.lmt != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 9, IntSerializer.INSTANCE, deviceNode.lmt);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 10) || deviceNode.ext != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 10, DeviceNode$VungleExt$$serializer.INSTANCE, deviceNode.ext);
        }
    }

    @NotNull
    public final String component1() {
        return this.make;
    }

    @Nullable
    public final Integer component10() {
        return this.lmt;
    }

    @Nullable
    public final VungleExt component11() {
        return this.ext;
    }

    @NotNull
    public final String component2() {
        return this.model;
    }

    @NotNull
    public final String component3() {
        return this.osv;
    }

    @Nullable
    public final String component4() {
        return this.carrier;
    }

    @NotNull
    public final String component5() {
        return this.os;
    }

    public final int component6() {
        return this.w;
    }

    public final int component7() {
        return this.h;
    }

    @Nullable
    public final String component8() {
        return this.ua;
    }

    @Nullable
    public final String component9() {
        return this.ifa;
    }

    @NotNull
    public final DeviceNode copy(@NotNull String str, @NotNull String str2, @NotNull String str3, @Nullable String str4, @NotNull String str5, int i, int i2, @Nullable String str6, @Nullable String str7, @Nullable Integer num, @Nullable VungleExt vungleExt) {
        return new DeviceNode(str, str2, str3, str4, str5, i, i2, str6, str7, num, vungleExt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceNode)) {
            return false;
        }
        DeviceNode deviceNode = (DeviceNode) obj;
        if (Intrinsics.areEqual(this.make, deviceNode.make) && Intrinsics.areEqual(this.model, deviceNode.model) && Intrinsics.areEqual(this.osv, deviceNode.osv) && Intrinsics.areEqual(this.carrier, deviceNode.carrier) && Intrinsics.areEqual(this.os, deviceNode.os) && this.w == deviceNode.w && this.h == deviceNode.h && Intrinsics.areEqual(this.ua, deviceNode.ua) && Intrinsics.areEqual(this.ifa, deviceNode.ifa) && Intrinsics.areEqual(this.lmt, deviceNode.lmt) && Intrinsics.areEqual(this.ext, deviceNode.ext)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCarrier() {
        return this.carrier;
    }

    @Nullable
    public final VungleExt getExt() {
        return this.ext;
    }

    public final int getH() {
        return this.h;
    }

    @Nullable
    public final String getIfa() {
        return this.ifa;
    }

    @Nullable
    public final Integer getLmt() {
        return this.lmt;
    }

    @NotNull
    public final String getMake() {
        return this.make;
    }

    @NotNull
    public final String getModel() {
        return this.model;
    }

    @NotNull
    public final String getOs() {
        return this.os;
    }

    @NotNull
    public final String getOsv() {
        return this.osv;
    }

    @Nullable
    public final String getUa() {
        return this.ua;
    }

    public final int getW() {
        return this.w;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = ((((this.make.hashCode() * 31) + this.model.hashCode()) * 31) + this.osv.hashCode()) * 31;
        String str = this.carrier;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode6 = (((((((hashCode5 + hashCode) * 31) + this.os.hashCode()) * 31) + this.w) * 31) + this.h) * 31;
        String str2 = this.ua;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i2 = (hashCode6 + hashCode2) * 31;
        String str3 = this.ifa;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i3 = (i2 + hashCode3) * 31;
        Integer num = this.lmt;
        if (num == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num.hashCode();
        }
        int i4 = (i3 + hashCode4) * 31;
        VungleExt vungleExt = this.ext;
        if (vungleExt != null) {
            i = vungleExt.hashCode();
        }
        return i4 + i;
    }

    public final void setExt(@Nullable VungleExt vungleExt) {
        this.ext = vungleExt;
    }

    public final void setH(int i) {
        this.h = i;
    }

    public final void setIfa(@Nullable String str) {
        this.ifa = str;
    }

    public final void setLmt(@Nullable Integer num) {
        this.lmt = num;
    }

    public final void setUa(@Nullable String str) {
        this.ua = str;
    }

    public final void setW(int i) {
        this.w = i;
    }

    @NotNull
    public String toString() {
        return "DeviceNode(make=" + this.make + ", model=" + this.model + ", osv=" + this.osv + ", carrier=" + this.carrier + ", os=" + this.os + ", w=" + this.w + ", h=" + this.h + ", ua=" + this.ua + ", ifa=" + this.ifa + ", lmt=" + this.lmt + ", ext=" + this.ext + ')';
    }

    public DeviceNode(@NotNull String str, @NotNull String str2, @NotNull String str3, @Nullable String str4, @NotNull String str5, int i, int i2, @Nullable String str6, @Nullable String str7, @Nullable Integer num, @Nullable VungleExt vungleExt) {
        this.make = str;
        this.model = str2;
        this.osv = str3;
        this.carrier = str4;
        this.os = str5;
        this.w = i;
        this.h = i2;
        this.ua = str6;
        this.ifa = str7;
        this.lmt = num;
        this.ext = vungleExt;
    }

    public /* synthetic */ DeviceNode(String str, String str2, String str3, String str4, String str5, int i, int i2, String str6, String str7, Integer num, VungleExt vungleExt, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i3 & 8) != 0 ? null : str4, str5, i, i2, (i3 & 128) != 0 ? null : str6, (i3 & 256) != 0 ? null : str7, (i3 & 512) != 0 ? null : num, (i3 & 1024) != 0 ? null : vungleExt);
    }
}
