.class final synthetic Lcom/tencent/liteav/videobase/videobase/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/a;->a:Landroid/view/View;

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/View;I)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/a;->a:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->lambda$setVisibility$0(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
