.class public Lcom/tencent/thumbplayer/tcmedia/d/b$p;
.super Lcom/tencent/thumbplayer/tcmedia/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$p;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->a(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$p;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$p;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
