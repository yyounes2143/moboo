package com.mbridge.msdk.dycreator.utils;

import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBHorizontalScrollView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.PlayerView;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.dycreator.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C0094a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8914a;

        static {
            int[] iArr = new int[com.mbridge.msdk.dycreator.engine.c.values().length];
            f8914a = iArr;
            try {
                iArr[com.mbridge.msdk.dycreator.engine.c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.visibility.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.padding.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.paddingTop.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.paddingBottom.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.paddingLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.paddingRight.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.paddingStart.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.paddingEnd.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.orientation.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.text.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.ellipsize.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.fadingEdge.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.scrollHorizontally.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.textColor.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.textSize.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.textStyle.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.style.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.tag.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.gravity.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.verticalSpacing.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.numColumns.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.splitMotionEvents.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.cacheColorHint.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.horizontalSpacing.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.singleLine.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.lines.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.drawableLeft.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.drawablePadding.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.src.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.scaleType.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.divider.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.scrollbars.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f8914a[com.mbridge.msdk.dycreator.engine.c.listSelector.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
        }
    }

    private static void a() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025 A[Catch: Exception -> 0x002d, TRY_LEAVE, TryCatch #0 {Exception -> 0x002d, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001f, B:11:0x0025, B:6:0x0011, B:8:0x0019), top: B:16:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(android.view.View r2, java.lang.String r3) {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "@+id/"
            boolean r1 = r3.startsWith(r1)     // Catch: java.lang.Exception -> L2d
            if (r1 == 0) goto L11
            r0 = 5
            java.lang.String r3 = r3.substring(r0)     // Catch: java.lang.Exception -> L2d
        Lf:
            r0 = r3
            goto L1f
        L11:
            java.lang.String r1 = "@id/"
            boolean r1 = r3.startsWith(r1)     // Catch: java.lang.Exception -> L2d
            if (r1 == 0) goto L1f
            r0 = 4
            java.lang.String r3 = r3.substring(r0)     // Catch: java.lang.Exception -> L2d
            goto Lf
        L1f:
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L2d
            if (r3 != 0) goto L37
            int r3 = r0.hashCode()     // Catch: java.lang.Exception -> L2d
            r2.setId(r3)     // Catch: java.lang.Exception -> L2d
            return
        L2d:
            r2 = move-exception
            java.lang.String r2 = r2.getMessage()
            java.lang.String r3 = "AttributeUtil"
            com.mbridge.msdk.foundation.tools.o0.b(r3, r2)
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.dycreator.utils.a.b(android.view.View, java.lang.String):void");
    }

    private static void c(View view, String str) {
        String[] strArr;
        try {
            if (str.startsWith("#")) {
                try {
                    strArr = str.split("-");
                } catch (Exception unused) {
                    strArr = null;
                }
                if (strArr != null && strArr.length <= 2) {
                    view.setBackgroundColor(com.mbridge.msdk.dycreator.engine.b.a().d(str));
                } else if (strArr != null && strArr.length == 3) {
                    GradientDrawable a2 = com.mbridge.msdk.dycreator.engine.b.a().a(strArr);
                    if (a2 != null) {
                        view.setBackground(a2);
                    } else {
                        view.setBackgroundColor(com.mbridge.msdk.dycreator.engine.b.a().d(str));
                    }
                }
            } else if (str.startsWith("@color/")) {
                view.setBackgroundColor(com.mbridge.msdk.dycreator.engine.b.a().d(str));
            } else if (str.startsWith("@drawable/")) {
                view.setBackgroundResource(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getIdentifier(str.substring(10), "drawable", com.mbridge.msdk.foundation.controller.c.m().d().getPackageName()));
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void d(View view, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (str.equals("invisible")) {
                    view.setVisibility(4);
                } else if (str.equalsIgnoreCase("gone")) {
                    view.setVisibility(8);
                }
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(FrameLayout frameLayout, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
    }

    private static void a(ScrollView scrollView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
    }

    private static void a(MBHorizontalScrollView mBHorizontalScrollView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
    }

    public static void a(View view, AttributeSet attributeSet) {
        if (view == null || attributeSet == null) {
            return;
        }
        try {
            HashMap<String, com.mbridge.msdk.dycreator.engine.c> c = com.mbridge.msdk.dycreator.engine.b.a().c();
            if (c != null && !c.isEmpty()) {
                int attributeCount = attributeSet.getAttributeCount();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < attributeCount; i5++) {
                    com.mbridge.msdk.dycreator.engine.c cVar = c.get(attributeSet.getAttributeName(i5));
                    if (cVar != null) {
                        switch (C0094a.f8914a[cVar.ordinal()]) {
                            case 1:
                                b(view, attributeSet.getAttributeValue(i5));
                                break;
                            case 2:
                                c(view, attributeSet.getAttributeValue(i5));
                                break;
                            case 3:
                                d(view, attributeSet.getAttributeValue(i5));
                                break;
                            case 4:
                                a(view, attributeSet.getAttributeValue(i5));
                                break;
                            case 5:
                                int a2 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5));
                                view.setPadding(a2, a2, a2, a2);
                                break;
                            case 6:
                                i2 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5));
                                view.setPadding(i, i2, i3, i4);
                                break;
                            case 7:
                                i4 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5));
                                view.setPadding(i, i2, i3, i4);
                                break;
                            case 8:
                                i = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5));
                                view.setPadding(i, i2, i3, i4);
                                break;
                            case 9:
                                i3 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5));
                                view.setPadding(i, i2, i3, i4);
                                break;
                            case 10:
                                view.setPadding(com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5)), i2, i3, i4);
                                break;
                            case 11:
                                view.setPadding(i, i2, com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i5)), i4);
                                break;
                        }
                        if (view instanceof EditText) {
                            a();
                        } else if (view instanceof Button) {
                            a((Button) view, cVar, attributeSet, i5);
                        } else if (view instanceof TextView) {
                            a((TextView) view, cVar, attributeSet, i5);
                        } else if (view instanceof ImageView) {
                            a((ImageView) view, cVar, attributeSet, i5);
                        } else if (view instanceof ListView) {
                            a((ListView) view, cVar, attributeSet, i5);
                        } else if (view instanceof GridView) {
                            a((GridView) view, cVar, attributeSet, i5);
                        } else if (view instanceof ScrollView) {
                            a((ScrollView) view, cVar, attributeSet, i5);
                        } else if (view instanceof PlayerView) {
                            a((PlayerView) view, cVar, attributeSet, i5);
                        } else if (view instanceof MBHorizontalScrollView) {
                            a((MBHorizontalScrollView) view, cVar, attributeSet, i5);
                        } else if (view instanceof LinearLayout) {
                            a((LinearLayout) view, cVar, attributeSet, i5);
                        } else if (view instanceof RelativeLayout) {
                            a((RelativeLayout) view, cVar, attributeSet, i5);
                        } else if (view instanceof FrameLayout) {
                            a((FrameLayout) view, cVar, attributeSet, i5);
                        }
                    }
                }
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(PlayerView playerView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            if (C0094a.f8914a[cVar.ordinal()] != 12) {
                return;
            }
            if ("horizontal".equalsIgnoreCase(attributeSet.getAttributeValue(i))) {
                playerView.setOrientation(0);
            } else {
                playerView.setOrientation(1);
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(Button button, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            switch (C0094a.f8914a[cVar.ordinal()]) {
                case 13:
                    button.setText(com.mbridge.msdk.dycreator.engine.b.a().f(attributeSet.getAttributeValue(i)));
                    return;
                case 14:
                    if (attributeSet.getAttributeBooleanValue(i, false)) {
                        button.setFocusable(true);
                        button.setFocusableInTouchMode(true);
                        button.setSingleLine(true);
                        button.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        button.setMarqueeRepeatLimit(1000);
                        button.setSingleLine();
                        button.setHorizontallyScrolling(true);
                        button.requestFocus();
                        return;
                    }
                    return;
                case 15:
                    button.setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i, false));
                    return;
                case 16:
                    button.setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i, false));
                    return;
                case 17:
                    button.setTextColor(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i)));
                    return;
                case 18:
                    String attributeValue = attributeSet.getAttributeValue(i);
                    if (TextUtils.isEmpty(attributeValue)) {
                        return;
                    }
                    button.setTextSize(com.mbridge.msdk.dycreator.engine.b.a().a(attributeValue));
                    return;
                case 19:
                    if ("bold".equalsIgnoreCase(attributeSet.getAttributeValue(i))) {
                        button.setTypeface(Typeface.defaultFromStyle(1));
                        return;
                    }
                    return;
                case 20:
                    String attributeValue2 = attributeSet.getAttributeValue(i);
                    String substring = attributeValue2.substring(attributeValue2.indexOf("/") + 1);
                    com.mbridge.msdk.dycreator.engine.b a2 = com.mbridge.msdk.dycreator.engine.b.a();
                    button.setTextAppearance(com.mbridge.msdk.foundation.controller.c.m().d(), a2.c("R.style." + substring));
                    return;
                case 21:
                    String attributeValue3 = attributeSet.getAttributeValue(i);
                    if (TextUtils.isEmpty(attributeValue3)) {
                        return;
                    }
                    String str = b.f8915a.get(attributeValue3.substring(8));
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    button.setTag(str);
                    return;
                case 22:
                    button.setGravity(1);
                    return;
                default:
                    return;
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(GridView gridView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            int i2 = C0094a.f8914a[cVar.ordinal()];
            if (i2 != 1) {
                switch (i2) {
                    case 23:
                        gridView.setVerticalSpacing(e.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i))));
                        return;
                    case 24:
                        gridView.setNumColumns(attributeSet.getAttributeIntValue(i, 2));
                        return;
                    case 25:
                        gridView.setMotionEventSplittingEnabled(!attributeSet.getAttributeValue(i).equals("false"));
                        return;
                    case 26:
                        gridView.setCacheColorHint(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i)));
                        return;
                    case 27:
                        gridView.setHorizontalSpacing(e.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i))));
                        return;
                    default:
                        return;
                }
            }
            String attributeValue = attributeSet.getAttributeValue(i);
            if (attributeValue.startsWith("@+id/")) {
                gridView.setId(attributeValue.substring(5).hashCode());
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(View view, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String str2 = b.f8915a.get(str.substring(8));
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            view.setContentDescription(str2);
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(LinearLayout linearLayout, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            if (C0094a.f8914a[cVar.ordinal()] != 12) {
                return;
            }
            if ("horizontal".equalsIgnoreCase(attributeSet.getAttributeValue(i))) {
                linearLayout.setOrientation(0);
            } else {
                linearLayout.setOrientation(1);
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(RelativeLayout relativeLayout, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            if (C0094a.f8914a[cVar.ordinal()] != 22) {
                return;
            }
            relativeLayout.setGravity(com.mbridge.msdk.dycreator.engine.b.a().b(attributeSet.getAttributeValue(i)));
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(TextView textView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            int i2 = C0094a.f8914a[cVar.ordinal()];
            switch (i2) {
                case 13:
                    String attributeValue = attributeSet.getAttributeValue(i);
                    if (TextUtils.isEmpty(attributeValue)) {
                        return;
                    }
                    if (attributeValue.startsWith("@string/")) {
                        textView.setText(com.mbridge.msdk.dycreator.engine.b.a().f(attributeSet.getAttributeValue(i)));
                        return;
                    } else {
                        textView.setText(attributeValue);
                        return;
                    }
                case 14:
                    String attributeValue2 = attributeSet.getAttributeValue(i);
                    if (TextUtils.isEmpty(attributeValue2)) {
                        return;
                    }
                    if (attributeValue2.equals("end")) {
                        textView.setEllipsize(TextUtils.TruncateAt.END);
                    }
                    if (attributeValue2.equals("start")) {
                        textView.setEllipsize(TextUtils.TruncateAt.START);
                    }
                    if (attributeValue2.equals("middle")) {
                        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                    }
                    if (attributeValue2.equals("marquee")) {
                        textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        return;
                    }
                    return;
                case 15:
                    textView.setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i, false));
                    return;
                case 16:
                    textView.setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i, false));
                    return;
                case 17:
                    textView.setTextColor(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i)));
                    return;
                case 18:
                    String attributeValue3 = attributeSet.getAttributeValue(i);
                    if (TextUtils.isEmpty(attributeValue3)) {
                        return;
                    }
                    textView.setTextSize(com.mbridge.msdk.dycreator.engine.b.a().a(attributeValue3));
                    return;
                case 19:
                    if ("bold".equalsIgnoreCase(attributeSet.getAttributeValue(i))) {
                        textView.setTypeface(Typeface.defaultFromStyle(1));
                        return;
                    }
                    return;
                case 20:
                    String attributeValue4 = attributeSet.getAttributeValue(i);
                    String substring = attributeValue4.substring(attributeValue4.indexOf("/") + 1);
                    com.mbridge.msdk.dycreator.engine.b a2 = com.mbridge.msdk.dycreator.engine.b.a();
                    a2.c("R.style." + substring);
                    return;
                case 21:
                    String attributeValue5 = attributeSet.getAttributeValue(i);
                    if (TextUtils.isEmpty(attributeValue5)) {
                        return;
                    }
                    String str = b.f8915a.get(attributeValue5.substring(8));
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    textView.setTag(str);
                    return;
                case 22:
                    textView.setGravity(com.mbridge.msdk.dycreator.engine.b.a().b(attributeSet.getAttributeValue(i)));
                    return;
                default:
                    switch (i2) {
                        case 28:
                            textView.setSingleLine(attributeSet.getAttributeBooleanValue(i, false));
                            return;
                        case 29:
                            textView.setLines(attributeSet.getAttributeIntValue(i, 1));
                            return;
                        case 30:
                            String attributeValue6 = attributeSet.getAttributeValue(i);
                            String str2 = "";
                            if (attributeValue6.startsWith("@drawable/")) {
                                str2 = attributeValue6.substring(10);
                            }
                            if (TextUtils.isEmpty(str2)) {
                                return;
                            }
                            textView.setCompoundDrawables(textView.getResources().getDrawable(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str2, "drawable")), null, null, null);
                            return;
                        case 31:
                            textView.setCompoundDrawablePadding(com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i)));
                            return;
                        default:
                            return;
                    }
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(ImageView imageView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            int i2 = C0094a.f8914a[cVar.ordinal()];
            if (i2 == 32) {
                com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i), imageView);
            } else if (i2 != 33) {
            } else {
                String attributeValue = attributeSet.getAttributeValue(i);
                if (TextUtils.isEmpty(attributeValue)) {
                    return;
                }
                if (attributeValue.equals("fitXY")) {
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                } else if (attributeValue.equals("centerInside")) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                } else if (attributeValue.equals("centerCrop")) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else if (attributeValue.equals("fitStart")) {
                    imageView.setScaleType(ImageView.ScaleType.FIT_START);
                }
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }

    private static void a(ListView listView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i) {
        try {
            int i2 = C0094a.f8914a[cVar.ordinal()];
            if (i2 == 25) {
                listView.setMotionEventSplittingEnabled(!attributeSet.getAttributeValue(i).equals("false"));
            } else if (i2 != 26) {
                switch (i2) {
                    case 34:
                        String attributeValue = attributeSet.getAttributeValue(i);
                        if (TextUtils.isEmpty(attributeValue) || !attributeValue.startsWith("@null")) {
                            return;
                        }
                        listView.setDivider(null);
                        return;
                    case 35:
                        String attributeValue2 = attributeSet.getAttributeValue(i);
                        if (TextUtils.isEmpty(attributeValue2)) {
                            return;
                        }
                        if (attributeValue2.equals("none")) {
                            listView.setVerticalScrollBarEnabled(false);
                        }
                        if (attributeValue2.equals("false")) {
                            listView.setScrollbarFadingEnabled(false);
                            return;
                        }
                        return;
                    case 36:
                        String attributeValue3 = attributeSet.getAttributeValue(i);
                        if (TextUtils.isEmpty(attributeValue3)) {
                            return;
                        }
                        listView.setSelector(com.mbridge.msdk.dycreator.engine.b.a().d(attributeValue3));
                        return;
                    default:
                        return;
                }
            } else {
                listView.setCacheColorHint(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i)));
            }
        } catch (Exception e) {
            o0.b("AttributeUtil", e.getMessage());
        }
    }
}
