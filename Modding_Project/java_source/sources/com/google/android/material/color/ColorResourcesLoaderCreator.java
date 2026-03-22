package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;
/* compiled from: Proguard */
@RequiresApi(30)
/* loaded from: classes5.dex */
final class ColorResourcesLoaderCreator {
    private static final String TAG = "ColorResourcesLoaderCreator";

    private ColorResourcesLoaderCreator() {
    }

    @Nullable
    public static ResourcesLoader create(@NonNull Context context, @NonNull Map<Integer, Integer> map) {
        FileDescriptor fileDescriptor;
        ResourcesProvider loadFromTable;
        try {
            byte[] create = ColorResourcesTableCreator.create(context, map);
            int length = create.length;
            if (create.length == 0) {
                return null;
            }
            try {
                fileDescriptor = Os.memfd_create("temp.arsc", 0);
            } catch (Throwable th) {
                th = th;
                fileDescriptor = null;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptor);
                fileOutputStream.write(create);
                ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                ResourcesLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                loadFromTable = ResourcesProvider.loadFromTable(dup, null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.addProvider(loadFromTable);
                if (dup != null) {
                    dup.close();
                }
                fileOutputStream.close();
                if (fileDescriptor != null) {
                    Os.close(fileDescriptor);
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Throwable th2) {
                th = th2;
                if (fileDescriptor != null) {
                    Os.close(fileDescriptor);
                }
                throw th;
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
