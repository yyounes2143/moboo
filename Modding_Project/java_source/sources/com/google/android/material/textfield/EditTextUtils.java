package com.google.android.material.textfield;

import android.widget.EditText;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class EditTextUtils {
    private EditTextUtils() {
    }

    public static boolean isEditable(@NonNull EditText editText) {
        if (editText.getInputType() != 0) {
            return true;
        }
        return false;
    }
}
