package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.annotation.RequiresApi;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.IndividualNetworkCallback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@RequiresApi(28)
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB!\b\u0002\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/work/impl/constraints/IndividualNetworkCallback;", "Landroid/net/ConnectivityManager$NetworkCallback;", "onConstraintState", "Lkotlin/Function1;", "Landroidx/work/impl/constraints/ConstraintsState;", "", "Landroidx/work/impl/constraints/OnConstraintState;", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "onCapabilitiesChanged", "network", "Landroid/net/Network;", "networkCapabilities", "Landroid/net/NetworkCapabilities;", "onLost", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class IndividualNetworkCallback extends ConnectivityManager.NetworkCallback {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Function1<ConstraintsState, Unit> onConstraintState;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J4\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\fj\u0002`\u000e¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion;", "", "<init>", "()V", "addCallback", "Lkotlin/Function0;", "", "connManager", "Landroid/net/ConnectivityManager;", "networkRequest", "Landroid/net/NetworkRequest;", "onConstraintState", "Lkotlin/Function1;", "Landroidx/work/impl/constraints/ConstraintsState;", "Landroidx/work/impl/constraints/OnConstraintState;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit addCallback$lambda$0(Ref.BooleanRef booleanRef, ConnectivityManager connectivityManager, IndividualNetworkCallback individualNetworkCallback) {
            String str;
            if (booleanRef.element) {
                Logger logger = Logger.get();
                str = WorkConstraintsTrackerKt.TAG;
                logger.debug(str, "NetworkRequestConstraintController unregister callback");
                connectivityManager.unregisterNetworkCallback(individualNetworkCallback);
            }
            return Unit.INSTANCE;
        }

        @NotNull
        public final Function0<Unit> addCallback(@NotNull final ConnectivityManager connectivityManager, @NotNull NetworkRequest networkRequest, @NotNull Function1<? super ConstraintsState, Unit> function1) {
            String str;
            String str2;
            final IndividualNetworkCallback individualNetworkCallback = new IndividualNetworkCallback(function1, null);
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            try {
                Logger logger = Logger.get();
                str2 = WorkConstraintsTrackerKt.TAG;
                logger.debug(str2, "NetworkRequestConstraintController register callback");
                connectivityManager.registerNetworkCallback(networkRequest, individualNetworkCallback);
                booleanRef.element = true;
            } catch (RuntimeException e) {
                if (StringsKt.endsWith$default(e.getClass().getName(), "TooManyRequestsException", false, 2, (Object) null)) {
                    Logger logger2 = Logger.get();
                    str = WorkConstraintsTrackerKt.TAG;
                    logger2.debug(str, "NetworkRequestConstraintController couldn't register callback", e);
                    function1.invoke(new ConstraintsState.ConstraintsNotMet(7));
                } else {
                    throw e;
                }
            }
            return new Function0() { // from class: androidx.work.impl.constraints.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit addCallback$lambda$0;
                    addCallback$lambda$0 = IndividualNetworkCallback.Companion.addCallback$lambda$0(Ref.BooleanRef.this, connectivityManager, individualNetworkCallback);
                    return addCallback$lambda$0;
                }
            };
        }

        private Companion() {
        }
    }

    public /* synthetic */ IndividualNetworkCallback(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(@NotNull Network network, @NotNull NetworkCapabilities networkCapabilities) {
        String str;
        Logger logger = Logger.get();
        str = WorkConstraintsTrackerKt.TAG;
        logger.debug(str, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        this.onConstraintState.invoke(ConstraintsState.ConstraintsMet.INSTANCE);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(@NotNull Network network) {
        String str;
        Logger logger = Logger.get();
        str = WorkConstraintsTrackerKt.TAG;
        logger.debug(str, "NetworkRequestConstraintController onLost callback");
        this.onConstraintState.invoke(new ConstraintsState.ConstraintsNotMet(7));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private IndividualNetworkCallback(Function1<? super ConstraintsState, Unit> function1) {
        this.onConstraintState = function1;
    }
}
