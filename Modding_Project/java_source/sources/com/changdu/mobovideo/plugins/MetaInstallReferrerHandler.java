package com.changdu.mobovideo.plugins;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.changdu.mobovideo.R;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MetaInstallReferrerHandler {
    @Nullable
    public static MetaInstallReferrerDetail Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        Cursor cursor;
        Uri parse;
        Cursor cursor2 = null;
        try {
            String string = context.getResources().getString(R.string.facebook_app_id);
            String[] strArr = {"install_referrer", "is_ct", "actual_timestamp"};
            if (context.getPackageManager().resolveContentProvider("com.facebook.katana.provider.InstallReferrerProvider", 0) != null) {
                parse = Uri.parse("content://com.facebook.katana.provider.InstallReferrerProvider/" + string);
            } else if (context.getPackageManager().resolveContentProvider("com.instagram.contentprovider.InstallReferrerProvider", 0) != null) {
                parse = Uri.parse("content://com.instagram.contentprovider.InstallReferrerProvider/" + string);
            } else {
                if (context.getPackageManager().resolveContentProvider("com.facebook.lite.provider.InstallReferrerProvider", 0) != null) {
                    parse = Uri.parse("content://com.facebook.lite.provider.InstallReferrerProvider/" + string);
                }
                return null;
            }
            cursor = context.getContentResolver().query(parse, strArr, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        MetaInstallReferrerDetail metaInstallReferrerDetail = new MetaInstallReferrerDetail(cursor.getString(cursor.getColumnIndex("install_referrer")), cursor.getLong(cursor.getColumnIndex("actual_timestamp")), cursor.getInt(cursor.getColumnIndex("is_ct")));
                        cursor.close();
                        return metaInstallReferrerDetail;
                    }
                } catch (Exception unused) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    Throwable th2 = th;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th2;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
