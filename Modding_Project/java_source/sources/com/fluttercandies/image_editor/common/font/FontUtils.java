package com.fluttercandies.image_editor.common.font;

import android.graphics.Typeface;
import android.os.Build;
import com.jaredrummler.truetypeparser.TTFFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class FontUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, Typeface> f7280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f7281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) throws IOException {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Path path;
        InputStream newInputStream;
        if (Build.VERSION.SDK_INT >= 26) {
            path = Paths.get(str, new String[0]);
            newInputStream = Files.newInputStream(path, new OpenOption[0]);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TTFFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(newInputStream).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TTFFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileInputStream(str)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            int i = f7281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1;
            f7281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = String.valueOf(i);
        }
        Map<String, Typeface> map = f7280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (map.containsKey(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        map.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Typeface.createFromFile(new File(str)));
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Nullable
    public static Typeface Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return f7280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }
}
