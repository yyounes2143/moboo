package com.getkeepsafe.relinker;

import android.annotation.SuppressLint;
import android.os.Build;
import com.getkeepsafe.relinker.ReLinker;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class SystemLibraryLoader implements ReLinker.LibraryLoader {
    @Override // com.getkeepsafe.relinker.ReLinker.LibraryLoader
    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        System.load(str);
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryLoader
    public String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        if (!TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            return new String[]{Build.CPU_ABI, str};
        }
        return new String[]{Build.CPU_ABI};
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryLoader
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryLoader
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str.startsWith(SAPropertyFilter.LIB) && str.endsWith(".so")) {
            return str;
        }
        return System.mapLibraryName(str);
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryLoader
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        System.loadLibrary(str);
    }
}
