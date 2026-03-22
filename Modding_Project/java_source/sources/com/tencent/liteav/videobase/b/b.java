package com.tencent.liteav.videobase.b;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.liteav.videobase.utils.PerspectiveTransformMatrixCalculator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b extends com.tencent.liteav.videobase.a.a {
    private int h;
    private float[] i;

    public b() {
        super("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}", "precision highp float;\nvarying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform mat3 matrix;\n\nvoid main()\n{\n  float cv_y = 1.0 - textureCoordinate.y;\n  float denominator = matrix[0][2] * textureCoordinate.x + matrix[1][2] * cv_y + matrix[2][2];\n  vec2 dst_coords;\n  dst_coords.x = matrix[0][0] * textureCoordinate.x + matrix[1][0] * cv_y + matrix[2][0];\n  dst_coords.y = matrix[0][1] * textureCoordinate.x + matrix[1][1] * cv_y + matrix[2][1];\n  dst_coords.x = dst_coords.x / denominator;\n  dst_coords.y = 1.0 - (dst_coords.y / denominator);\n  gl_FragColor = texture2D(inputImageTexture, dst_coords);\n}\n");
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void a(int i) {
        super.a(i);
        float[] fArr = this.i;
        if (fArr == null) {
            fArr = GLConstants.f10362a;
        }
        GLES20.glUniformMatrix3fv(this.h, 1, false, fArr, 0);
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void b(e eVar) {
        super.b(eVar);
        this.h = GLES20.glGetUniformLocation(this.f, "matrix");
    }

    public static /* synthetic */ void a(b bVar, List list, List list2) {
        float[] perspectiveTransformMatrix = PerspectiveTransformMatrixCalculator.getPerspectiveTransformMatrix(list, list2);
        float[] fArr = new float[9];
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                fArr[(i2 * 3) + i] = perspectiveTransformMatrix[(i * 3) + i2];
            }
        }
        bVar.i = fArr;
    }
}
