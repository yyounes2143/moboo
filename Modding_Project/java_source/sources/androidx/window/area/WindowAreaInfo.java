package androidx.window.area;

import android.os.Binder;
import androidx.window.area.WindowAreaCapability;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.layout.WindowMetrics;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@ExperimentalWindowApi
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001&B'\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0010\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\rJ\u000e\u0010!\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\rJ\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020%H\u0016R0\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Landroidx/window/area/WindowAreaInfo;", "", "metrics", "Landroidx/window/layout/WindowMetrics;", "type", "Landroidx/window/area/WindowAreaInfo$Type;", BidResponsed.KEY_TOKEN, "Landroid/os/Binder;", "windowAreaComponent", "Landroidx/window/extensions/area/WindowAreaComponent;", "(Landroidx/window/layout/WindowMetrics;Landroidx/window/area/WindowAreaInfo$Type;Landroid/os/Binder;Landroidx/window/extensions/area/WindowAreaComponent;)V", "capabilityMap", "Ljava/util/HashMap;", "Landroidx/window/area/WindowAreaCapability$Operation;", "Landroidx/window/area/WindowAreaCapability;", "Lkotlin/collections/HashMap;", "getCapabilityMap$window_release", "()Ljava/util/HashMap;", "getMetrics", "()Landroidx/window/layout/WindowMetrics;", "setMetrics", "(Landroidx/window/layout/WindowMetrics;)V", "getToken", "()Landroid/os/Binder;", "getType", "()Landroidx/window/area/WindowAreaInfo$Type;", "createRearFacingSession", "Landroidx/window/area/WindowAreaSession;", "operation", "equals", "", "other", "getActiveSession", "getCapability", "hashCode", "", "toString", "", "Type", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WindowAreaInfo {
    @NotNull
    private final HashMap<WindowAreaCapability.Operation, WindowAreaCapability> capabilityMap = new HashMap<>();
    @NotNull
    private WindowMetrics metrics;
    @NotNull
    private final Binder token;
    @NotNull
    private final Type type;
    @NotNull
    private final WindowAreaComponent windowAreaComponent;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/window/area/WindowAreaInfo$Type;", "", "description", "", "(Ljava/lang/String;)V", "toString", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ExperimentalWindowApi
    /* loaded from: classes3.dex */
    public static final class Type {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Type TYPE_REAR_FACING = new Type("REAR FACING");
        @NotNull
        private final String description;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/window/area/WindowAreaInfo$Type$Companion;", "", "()V", "TYPE_REAR_FACING", "Landroidx/window/area/WindowAreaInfo$Type;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private Type(String str) {
            this.description = str;
        }

        @NotNull
        public String toString() {
            return this.description;
        }
    }

    public WindowAreaInfo(@NotNull WindowMetrics windowMetrics, @NotNull Type type, @NotNull Binder binder, @NotNull WindowAreaComponent windowAreaComponent) {
        this.metrics = windowMetrics;
        this.type = type;
        this.token = binder;
        this.windowAreaComponent = windowAreaComponent;
    }

    private final WindowAreaSession createRearFacingSession(WindowAreaCapability.Operation operation) {
        if (Intrinsics.areEqual(operation, WindowAreaCapability.Operation.OPERATION_TRANSFER_ACTIVITY_TO_AREA)) {
            return new RearDisplaySessionImpl(this.windowAreaComponent);
        }
        if (Intrinsics.areEqual(operation, WindowAreaCapability.Operation.OPERATION_PRESENT_ON_AREA)) {
            WindowAreaComponent windowAreaComponent = this.windowAreaComponent;
            return new RearDisplayPresentationSessionPresenterImpl(windowAreaComponent, windowAreaComponent.getRearDisplayPresentation());
        }
        throw new IllegalArgumentException("Invalid operation provided");
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof WindowAreaInfo) {
            WindowAreaInfo windowAreaInfo = (WindowAreaInfo) obj;
            if (Intrinsics.areEqual(this.metrics, windowAreaInfo.metrics) && Intrinsics.areEqual(this.type, windowAreaInfo.type) && Intrinsics.areEqual(this.capabilityMap.entrySet(), windowAreaInfo.capabilityMap.entrySet())) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    public final WindowAreaSession getActiveSession(@NotNull WindowAreaCapability.Operation operation) {
        if (Intrinsics.areEqual(getCapability(operation).getStatus(), WindowAreaCapability.Status.WINDOW_AREA_STATUS_ACTIVE)) {
            if (Intrinsics.areEqual(this.type, Type.TYPE_REAR_FACING)) {
                return createRearFacingSession(operation);
            }
            return null;
        }
        throw new IllegalStateException("No session is currently active");
    }

    @NotNull
    public final WindowAreaCapability getCapability(@NotNull WindowAreaCapability.Operation operation) {
        WindowAreaCapability windowAreaCapability = this.capabilityMap.get(operation);
        if (windowAreaCapability == null) {
            return new WindowAreaCapability(operation, WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED);
        }
        return windowAreaCapability;
    }

    @NotNull
    public final HashMap<WindowAreaCapability.Operation, WindowAreaCapability> getCapabilityMap$window_release() {
        return this.capabilityMap;
    }

    @NotNull
    public final WindowMetrics getMetrics() {
        return this.metrics;
    }

    @NotNull
    public final Binder getToken() {
        return this.token;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.metrics.hashCode() * 31) + this.type.hashCode()) * 31) + this.capabilityMap.entrySet().hashCode();
    }

    public final void setMetrics(@NotNull WindowMetrics windowMetrics) {
        this.metrics = windowMetrics;
    }

    @NotNull
    public String toString() {
        return "WindowAreaInfo{ Metrics: " + this.metrics + ", type: " + this.type + ", Capabilities: " + this.capabilityMap.entrySet() + " }";
    }
}
