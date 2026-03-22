package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.customview.widget.ViewDragHelper;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class RightSheetDelegate extends SheetDelegate {
    final SideSheetBehavior<? extends View> sheetBehavior;

    public RightSheetDelegate(@NonNull SideSheetBehavior<? extends View> sideSheetBehavior) {
        this.sheetBehavior = sideSheetBehavior;
    }

    private boolean isReleasedCloseToOriginEdge(@NonNull View view) {
        if (view.getLeft() > (getHiddenOffset() - getExpandedOffset()) / 2) {
            return true;
        }
        return false;
    }

    private boolean isSwipeSignificant(float f, float f2) {
        if (SheetUtils.isSwipeMostlyHorizontal(f, f2) && f2 > this.sheetBehavior.getSignificantVelocityThreshold()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public float calculateSlideOffsetBasedOnOutwardEdge(int i) {
        float hiddenOffset = getHiddenOffset();
        return (hiddenOffset - i) / (hiddenOffset - getExpandedOffset());
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int calculateTargetStateOnViewReleased(@NonNull View view, float f, float f2) {
        if (f < 0.0f) {
            return 3;
        }
        if (shouldHide(view, f)) {
            if (!isSwipeSignificant(f, f2) && !isReleasedCloseToOriginEdge(view)) {
                return 3;
            }
            return 5;
        } else if (f != 0.0f && SheetUtils.isSwipeMostlyHorizontal(f, f2)) {
            return 5;
        } else {
            int left = view.getLeft();
            if (Math.abs(left - getExpandedOffset()) < Math.abs(left - getHiddenOffset())) {
                return 3;
            }
            return 5;
        }
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getExpandedOffset() {
        return Math.max(0, getHiddenOffset() - this.sheetBehavior.getChildWidth());
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getHiddenOffset() {
        return this.sheetBehavior.getParentWidth();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public <V extends View> int getOutwardEdge(@NonNull V v) {
        return v.getLeft();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getSheetEdge() {
        return 0;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public boolean isSettling(View view, int i, boolean z) {
        int outwardEdgeOffsetForState = this.sheetBehavior.getOutwardEdgeOffsetForState(i);
        ViewDragHelper viewDragHelper = this.sheetBehavior.getViewDragHelper();
        if (viewDragHelper != null) {
            if (z) {
                if (viewDragHelper.settleCapturedViewAt(outwardEdgeOffsetForState, view.getTop())) {
                    return true;
                }
                return false;
            } else if (viewDragHelper.smoothSlideViewTo(view, outwardEdgeOffsetForState, view.getTop())) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public boolean shouldHide(@NonNull View view, float f) {
        if (Math.abs(view.getRight() + (f * this.sheetBehavior.getHideFriction())) > this.sheetBehavior.getHideThreshold()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public void updateCoplanarSiblingLayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        int parentWidth = this.sheetBehavior.getParentWidth();
        if (i <= parentWidth) {
            marginLayoutParams.rightMargin = parentWidth - i;
        }
    }
}
