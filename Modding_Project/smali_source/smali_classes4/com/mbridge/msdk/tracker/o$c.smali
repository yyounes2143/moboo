.class final Lcom/mbridge/msdk/tracker/o$c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/mbridge/msdk/tracker/network/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/r;

.field private final b:Lcom/mbridge/msdk/tracker/t;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/r;Lcom/mbridge/msdk/tracker/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/o$c;->a:Lcom/mbridge/msdk/tracker/r;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/o$c;->b:Lcom/mbridge/msdk/tracker/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/o$c;->a:Lcom/mbridge/msdk/tracker/r;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/o$c;->a:Lcom/mbridge/msdk/tracker/r;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/o$c;->b:Lcom/mbridge/msdk/tracker/t;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/tracker/r;->a(Lcom/mbridge/msdk/tracker/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    sget-boolean p1, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method
