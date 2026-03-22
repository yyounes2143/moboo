package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DrawableDecoderCompat {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile boolean f4860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

    public static Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        if (theme != null) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, theme);
            contextThemeWrapper.applyOverrideConfiguration(theme.getResources().getConfiguration());
            context = contextThemeWrapper;
        }
        return AppCompatResources.getDrawable(context, i);
    }

    public static Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return ResourcesCompat.getDrawable(context.getResources(), i, theme);
    }

    public static Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Context context2, @DrawableRes int i, @Nullable Resources.Theme theme) {
        try {
            if (f4860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, i, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return ContextCompat.getDrawable(context2, i);
            }
            throw e;
        } catch (NoClassDefFoundError unused2) {
            f4860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, i, theme);
    }

    public static Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Context context2, @DrawableRes int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, context2, i, null);
    }

    public static Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, context, i, theme);
    }
}
