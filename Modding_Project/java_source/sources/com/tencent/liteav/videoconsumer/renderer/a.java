package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.tencent.liteav.base.util.Size;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final String f10419a = "PostProcessor_" + hashCode();
    final Size b;
    final com.tencent.liteav.videobase.frame.e c;
    com.tencent.liteav.videobase.b.b d;
    FloatBuffer e;
    FloatBuffer f;
    com.tencent.liteav.videobase.frame.i g;
    Matrix h;
    List<PointF> i;
    List<PointF> j;
    boolean k;

    public a(com.tencent.liteav.videobase.frame.e eVar, int i, int i2) {
        Size size = new Size();
        this.b = size;
        this.k = false;
        this.c = eVar;
        size.set(i, i2);
    }

    public final void a(List<PointF> list, List<PointF> list2) {
        if (list == null || list.size() != 4 || list2 == null || list2.size() != 4 || !this.b.isValid() || this.d == null) {
            return;
        }
        List<PointF> a2 = a(list);
        List<PointF> a3 = a(list2);
        com.tencent.liteav.videobase.b.b bVar = this.d;
        if (a2.size() == 4 && a3.size() == 4) {
            bVar.a(com.tencent.liteav.videobase.b.c.a(bVar, a3, a2));
        }
    }

    private List<PointF> a(List<PointF> list) {
        ArrayList arrayList = new ArrayList();
        for (PointF pointF : list) {
            float f = pointF.x;
            Size size = this.b;
            PointF a2 = a(new PointF(f * size.width, pointF.y * size.height), this.h);
            float f2 = a2.x;
            Size size2 = this.b;
            PointF pointF2 = new PointF(f2 / size2.width, a2.y / size2.height);
            pointF2.y = 1.0f - pointF2.y;
            arrayList.add(pointF2);
        }
        return arrayList;
    }

    private static PointF a(PointF pointF, Matrix matrix) {
        if (matrix != null) {
            Matrix matrix2 = new Matrix();
            if (matrix.invert(matrix2)) {
                float[] fArr = new float[2];
                matrix2.mapPoints(fArr, new float[]{pointF.x, pointF.y});
                return new PointF(fArr[0], fArr[1]);
            }
        }
        return pointF;
    }
}
