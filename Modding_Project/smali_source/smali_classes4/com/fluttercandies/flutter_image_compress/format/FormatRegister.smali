.class public final Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;",
        "",
        "<init>",
        "()V",
        "Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;",
        "handler",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V",
        "",
        "formatIndex",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;",
        "Landroid/util/SparseArray;",
        "Landroid/util/SparseArray;",
        "formatMap",
        "flutter_image_compress_common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V
    .locals 2
    .param p1    # Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    .line 8
    .line 9
    return-object p1
.end method
