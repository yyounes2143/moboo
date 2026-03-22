package com.sensorsdata.analytics.android.autotrack.utils;

import android.view.View;
import android.view.ViewGroup;
import com.sensorsdata.analytics.android.autotrack.R;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class KeyboardViewUtil {
    private static final String MATCH_RULE_KEYBOARD = "^([A-Za-z]|[0-9])";
    private static final String TAG_KEYBOARD = "keyboard_tag";
    private static boolean isSensorsCheckKeyboard = true;

    private static boolean getKeyboardSimilarFatherView(View view) {
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup.getTag(R.id.sensors_analytics_tag_view_keyboard) != null) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            if (childCount > 1) {
                int indexOfChild = viewGroup.indexOfChild(view);
                for (int i = 0; i < childCount; i++) {
                    if (indexOfChild != i) {
                        View childAt = viewGroup.getChildAt(i);
                        int i2 = R.id.sensors_analytics_tag_view_keyboard;
                        if (childAt.getTag(i2) != null) {
                            return true;
                        }
                        if (childAt instanceof ViewGroup) {
                            ViewGroup viewGroup2 = (ViewGroup) childAt;
                            int childCount2 = viewGroup2.getChildCount();
                            for (int i3 = 0; i3 < childCount2; i3++) {
                                if (Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(viewGroup2.getChildAt(i3)))) {
                                    int i4 = R.id.sensors_analytics_tag_view_keyboard;
                                    viewGroup2.setTag(i4, TAG_KEYBOARD);
                                    viewGroup.setTag(i4, TAG_KEYBOARD);
                                    return true;
                                }
                            }
                            continue;
                        } else if (Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(childAt))) {
                            childAt.setTag(i2, TAG_KEYBOARD);
                            viewGroup.setTag(i2, TAG_KEYBOARD);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private static boolean getKeyboardSimilarView(View view) {
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup.getTag(R.id.sensors_analytics_tag_view_keyboard) != null) {
                return true;
            }
            int indexOfChild = viewGroup.indexOfChild(view);
            int childCount = viewGroup.getChildCount();
            if (childCount > 1) {
                for (int i = 0; i < childCount; i++) {
                    if (indexOfChild != i && Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(viewGroup.getChildAt(i)))) {
                        viewGroup.setTag(R.id.sensors_analytics_tag_view_keyboard, TAG_KEYBOARD);
                        return true;
                    }
                }
                return getKeyboardSimilarFatherView(viewGroup);
            }
            return getKeyboardSimilarFatherView(viewGroup);
        }
        return getKeyboardSimilarFatherView((View) view.getParent());
    }

    public static boolean isKeyboardView(View view) {
        if (!isSensorsCheckKeyboard || view == null || !Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(view))) {
            return false;
        }
        return getKeyboardSimilarView(view);
    }
}
