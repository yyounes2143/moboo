package androidx.core.location;

import android.location.Location;
import android.os.Bundle;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwww {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocationListenerCompat locationListenerCompat, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            locationListenerCompat.onLocationChanged((Location) list.get(i));
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocationListenerCompat locationListenerCompat, String str) {
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocationListenerCompat locationListenerCompat, String str) {
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocationListenerCompat locationListenerCompat, int i) {
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocationListenerCompat locationListenerCompat, String str, int i, Bundle bundle) {
    }
}
