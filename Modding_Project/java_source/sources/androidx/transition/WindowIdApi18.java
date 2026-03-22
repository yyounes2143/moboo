package androidx.transition;

import android.view.View;
import android.view.WindowId;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* compiled from: Proguard */
@RequiresApi(18)
/* loaded from: classes3.dex */
class WindowIdApi18 implements WindowIdImpl {
    private final WindowId mWindowId;

    public WindowIdApi18(@NonNull View view) {
        this.mWindowId = view.getWindowId();
    }

    public boolean equals(Object obj) {
        if ((obj instanceof WindowIdApi18) && ((WindowIdApi18) obj).mWindowId.equals(this.mWindowId)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.mWindowId.hashCode();
    }
}
