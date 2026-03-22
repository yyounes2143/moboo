package gatewayprotocol.v1;

import gatewayprotocol.v1.DynamicDeviceInfoKt;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0002\b\u0014H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0015\u001a)\u0010\u0016\u001a\u00020\u000f*\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000\u001a)\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000\u001a)\u0010\u0016\u001a\u00020\u0006*\u00020\u00062\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0019"}, d2 = {"androidOrNull", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfoOrBuilder;", "getAndroidOrNull", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfoOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "iosOrNull", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "getIosOrNull", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfoOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "networkCapabilityTransportsOrNull", "Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$AndroidOrBuilder;", "getNetworkCapabilityTransportsOrNull", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$AndroidOrBuilder;)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "dynamicDeviceInfo", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializedynamicDeviceInfo", "copy", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDynamicDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicDeviceInfoKt.kt\ngatewayprotocol/v1/DynamicDeviceInfoKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1533:1\n1#2:1534\n*E\n"})
/* loaded from: classes6.dex */
public final class DynamicDeviceInfoKtKt {
    @JvmName(name = "-initializedynamicDeviceInfo")
    @NotNull
    /* renamed from: -initializedynamicDeviceInfo  reason: not valid java name */
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo m386initializedynamicDeviceInfo(@NotNull Function1<? super DynamicDeviceInfoKt.Dsl, Unit> function1) {
        DynamicDeviceInfoKt.Dsl _create = DynamicDeviceInfoKt.Dsl.Companion._create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo copy(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo, @NotNull Function1<? super DynamicDeviceInfoKt.Dsl, Unit> function1) {
        DynamicDeviceInfoKt.Dsl _create = DynamicDeviceInfoKt.Dsl.Companion._create(dynamicDeviceInfo.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android getAndroidOrNull(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfoOrBuilder dynamicDeviceInfoOrBuilder) {
        if (dynamicDeviceInfoOrBuilder.hasAndroid()) {
            return dynamicDeviceInfoOrBuilder.getAndroid();
        }
        return null;
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios getIosOrNull(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfoOrBuilder dynamicDeviceInfoOrBuilder) {
        if (dynamicDeviceInfoOrBuilder.hasIos()) {
            return dynamicDeviceInfoOrBuilder.getIos();
        }
        return null;
    }

    @Nullable
    public static final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports getNetworkCapabilityTransportsOrNull(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.AndroidOrBuilder androidOrBuilder) {
        if (androidOrBuilder.hasNetworkCapabilityTransports()) {
            return androidOrBuilder.getNetworkCapabilityTransports();
        }
        return null;
    }

    @NotNull
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android copy(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android android2, @NotNull Function1<? super DynamicDeviceInfoKt.AndroidKt.Dsl, Unit> function1) {
        DynamicDeviceInfoKt.AndroidKt.Dsl _create = DynamicDeviceInfoKt.AndroidKt.Dsl.Companion._create(android2.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios copy(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios ios, @NotNull Function1<? super DynamicDeviceInfoKt.IosKt.Dsl, Unit> function1) {
        DynamicDeviceInfoKt.IosKt.Dsl _create = DynamicDeviceInfoKt.IosKt.Dsl.Companion._create(ios.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
