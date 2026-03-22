package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.initialization.AdapterStatus;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class FlutterAdapterStatus {
    @NonNull
    final String description;
    @NonNull
    final Number latency;
    @NonNull
    final AdapterInitializationState state;

    /* compiled from: Proguard */
    /* renamed from: io.flutter.plugins.googlemobileads.FlutterAdapterStatus$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$gms$ads$initialization$AdapterStatus$State;

        static {
            int[] iArr = new int[AdapterStatus.State.values().length];
            $SwitchMap$com$google$android$gms$ads$initialization$AdapterStatus$State = iArr;
            try {
                iArr[AdapterStatus.State.NOT_READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$gms$ads$initialization$AdapterStatus$State[AdapterStatus.State.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum AdapterInitializationState {
        NOT_READY,
        READY
    }

    public FlutterAdapterStatus(@NonNull AdapterInitializationState adapterInitializationState, @NonNull String str, @NonNull Number number) {
        this.state = adapterInitializationState;
        this.description = str;
        this.latency = number;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlutterAdapterStatus)) {
            return false;
        }
        FlutterAdapterStatus flutterAdapterStatus = (FlutterAdapterStatus) obj;
        if (this.state != flutterAdapterStatus.state || !this.description.equals(flutterAdapterStatus.description)) {
            return false;
        }
        return this.latency.equals(flutterAdapterStatus.latency);
    }

    public int hashCode() {
        return (((this.state.hashCode() * 31) + this.description.hashCode()) * 31) + this.latency.hashCode();
    }

    public FlutterAdapterStatus(@NonNull AdapterStatus adapterStatus) {
        int i = AnonymousClass1.$SwitchMap$com$google$android$gms$ads$initialization$AdapterStatus$State[adapterStatus.getInitializationState().ordinal()];
        if (i == 1) {
            this.state = AdapterInitializationState.NOT_READY;
        } else if (i == 2) {
            this.state = AdapterInitializationState.READY;
        } else {
            throw new IllegalArgumentException(String.format("Unable to handle state: %s", adapterStatus.getInitializationState()));
        }
        this.description = adapterStatus.getDescription();
        this.latency = Integer.valueOf(adapterStatus.getLatency());
    }
}
