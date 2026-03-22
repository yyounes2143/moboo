package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterAdValue {
    @NonNull
    final String currencyCode;
    final int precisionType;
    final long valueMicros;

    public FlutterAdValue(int i, @NonNull String str, long j) {
        this.precisionType = i;
        this.currencyCode = str;
        this.valueMicros = j;
    }
}
