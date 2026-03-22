package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    /* compiled from: Proguard */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DrawMode {
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Mesh {
        private final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public SubMesh getSubMesh(int i) {
            return this.subMeshes[i];
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i, float[] fArr, float[] fArr2, int i2) {
            boolean z;
            this.textureId = i;
            if (fArr.length * 2 == fArr2.length * 3) {
                z = true;
            } else {
                z = false;
            }
            Assertions.checkArgument(z);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i2;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public Projection(Mesh mesh, int i) {
        this(mesh, mesh, i);
    }

    public static Projection createEquirectangular(int i) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i;
        this.singleMesh = mesh == mesh2;
    }

    public static Projection createEquirectangular(float f, int i, int i2, float f2, float f3, int i3) {
        int i4;
        int i5;
        int i6 = i;
        int i7 = 3;
        int i8 = 1;
        Assertions.checkArgument(f > 0.0f);
        Assertions.checkArgument(i6 >= 1);
        Assertions.checkArgument(i2 >= 1);
        Assertions.checkArgument(f2 > 0.0f && f2 <= 180.0f);
        Assertions.checkArgument(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i6;
        float f5 = radians2 / i2;
        int i9 = i2 + 1;
        int i10 = ((i9 * 2) + 2) * i6;
        float[] fArr = new float[i10 * 3];
        float[] fArr2 = new float[i10 * 2];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i6) {
            float f6 = radians / 2.0f;
            float f7 = (i11 * f4) - f6;
            int i14 = i7;
            int i15 = i11 + 1;
            int i16 = i8;
            float f8 = (i15 * f4) - f6;
            int i17 = 0;
            while (i17 < i9) {
                float f9 = radians;
                float f10 = radians2;
                int i18 = i13;
                int i19 = 0;
                int i20 = 2;
                while (i19 < i20) {
                    int i21 = i15;
                    float f11 = i17 * f5;
                    float f12 = f4;
                    float f13 = f5;
                    double d = f;
                    double d2 = (f11 + 3.1415927f) - (f10 / 2.0f);
                    double d3 = i19 == 0 ? f7 : f8;
                    fArr[i12] = -((float) (Math.sin(d2) * d * Math.cos(d3)));
                    fArr[i12 + 1] = (float) (d * Math.sin(d3));
                    int i22 = i12 + 3;
                    fArr[i12 + 2] = (float) (Math.cos(d2) * d * Math.cos(d3));
                    fArr2[i18] = f11 / f10;
                    int i23 = i18 + 2;
                    fArr2[i18 + 1] = ((i11 + i19) * f12) / f9;
                    if ((i17 == 0 && i19 == 0) || (i17 == i2 && i19 == i16)) {
                        i4 = i14;
                        System.arraycopy(fArr, i12, fArr, i22, i4);
                        i12 += 6;
                        i5 = 2;
                        System.arraycopy(fArr2, i18, fArr2, i23, 2);
                        i18 += 4;
                    } else {
                        i4 = i14;
                        i5 = 2;
                        i12 = i22;
                        i18 = i23;
                    }
                    i19++;
                    i14 = i4;
                    i16 = 1;
                    i20 = i5;
                    i15 = i21;
                    f4 = f12;
                    f5 = f13;
                }
                i17 += i16;
                radians = f9;
                i13 = i18;
                i15 = i15;
                f5 = f5;
                radians2 = f10;
            }
            int i24 = i15;
            i6 = i;
            i7 = i14;
            i8 = i16;
            i11 = i24;
        }
        int i25 = i8;
        SubMesh[] subMeshArr = new SubMesh[i25];
        subMeshArr[0] = new SubMesh(0, fArr, fArr2, i25);
        return new Projection(new Mesh(subMeshArr), i3);
    }
}
