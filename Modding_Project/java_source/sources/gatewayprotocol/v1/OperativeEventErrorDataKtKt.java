package gatewayprotocol.v1;

import gatewayprotocol.v1.OperativeEventErrorDataKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"operativeEventErrorData", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeoperativeEventErrorData", "copy", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOperativeEventErrorDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventErrorDataKt.kt\ngatewayprotocol/v1/OperativeEventErrorDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
/* loaded from: classes6.dex */
public final class OperativeEventErrorDataKtKt {
    @JvmName(name = "-initializeoperativeEventErrorData")
    @NotNull
    /* renamed from: -initializeoperativeEventErrorData  reason: not valid java name */
    public static final OperativeEventRequestOuterClass.OperativeEventErrorData m401initializeoperativeEventErrorData(@NotNull Function1<? super OperativeEventErrorDataKt.Dsl, Unit> function1) {
        OperativeEventErrorDataKt.Dsl _create = OperativeEventErrorDataKt.Dsl.Companion._create(OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final OperativeEventRequestOuterClass.OperativeEventErrorData copy(@NotNull OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorData, @NotNull Function1<? super OperativeEventErrorDataKt.Dsl, Unit> function1) {
        OperativeEventErrorDataKt.Dsl _create = OperativeEventErrorDataKt.Dsl.Companion._create(operativeEventErrorData.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
