package com.appsflyer.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.appsflyer.AFLogger;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFb1tSDK {
    public final String[] AFAdRevenueData;

    public AFb1tSDK(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            Pattern compile = Pattern.compile("[\\w]{1,45}");
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (str != null && compile.matcher(str).matches()) {
                    arrayList.add(str.toLowerCase(Locale.getDefault()));
                } else {
                    AFLogger.afWarnLog("Invalid partner name: ".concat(String.valueOf(str)));
                }
            }
            if (arrayList.contains(TtmlNode.COMBINE_ALL)) {
                this.AFAdRevenueData = new String[]{TtmlNode.COMBINE_ALL};
                return;
            } else if (!arrayList.isEmpty()) {
                this.AFAdRevenueData = (String[]) arrayList.toArray(new String[0]);
                return;
            } else {
                this.AFAdRevenueData = null;
                return;
            }
        }
        this.AFAdRevenueData = null;
    }
}
