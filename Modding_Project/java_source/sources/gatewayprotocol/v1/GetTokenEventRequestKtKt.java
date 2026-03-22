package gatewayprotocol.v1;

import gatewayprotocol.v1.GetTokenEventRequestKt;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"getTokenEventRequest", "Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/GetTokenEventRequestKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializegetTokenEventRequest", "copy", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGetTokenEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetTokenEventRequestKt.kt\ngatewayprotocol/v1/GetTokenEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"})
/* loaded from: classes6.dex */
public final class GetTokenEventRequestKtKt {
    @JvmName(name = "-initializegetTokenEventRequest")
    @NotNull
    /* renamed from: -initializegetTokenEventRequest  reason: not valid java name */
    public static final GetTokenEventRequestOuterClass.GetTokenEventRequest m389initializegetTokenEventRequest(@NotNull Function1<? super GetTokenEventRequestKt.Dsl, Unit> function1) {
        GetTokenEventRequestKt.Dsl _create = GetTokenEventRequestKt.Dsl.Companion._create(GetTokenEventRequestOuterClass.GetTokenEventRequest.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final GetTokenEventRequestOuterClass.GetTokenEventRequest copy(@NotNull GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest, @NotNull Function1<? super GetTokenEventRequestKt.Dsl, Unit> function1) {
        GetTokenEventRequestKt.Dsl _create = GetTokenEventRequestKt.Dsl.Companion._create(getTokenEventRequest.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
