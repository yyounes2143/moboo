.class final Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeArray"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 5
    .line 6
    iput p2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    iput p3, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    return-void
.end method
