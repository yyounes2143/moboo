package gatewayprotocol.v1;

import gatewayprotocol.v1.NetworkCapabilityTransportsKt;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"networkCapabilityTransports", "Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializenetworkCapabilityTransports", "copy", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNetworkCapabilityTransportsKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkCapabilityTransportsKt.kt\ngatewayprotocol/v1/NetworkCapabilityTransportsKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n1#2:279\n*E\n"})
/* loaded from: classes6.dex */
public final class NetworkCapabilityTransportsKtKt {
    @JvmName(name = "-initializenetworkCapabilityTransports")
    @NotNull
    /* renamed from: -initializenetworkCapabilityTransports  reason: not valid java name */
    public static final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports m400initializenetworkCapabilityTransports(@NotNull Function1<? super NetworkCapabilityTransportsKt.Dsl, Unit> function1) {
        NetworkCapabilityTransportsKt.Dsl _create = NetworkCapabilityTransportsKt.Dsl.Companion._create(NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports copy(@NotNull NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransports, @NotNull Function1<? super NetworkCapabilityTransportsKt.Dsl, Unit> function1) {
        NetworkCapabilityTransportsKt.Dsl _create = NetworkCapabilityTransportsKt.Dsl.Companion._create(networkCapabilityTransports.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
