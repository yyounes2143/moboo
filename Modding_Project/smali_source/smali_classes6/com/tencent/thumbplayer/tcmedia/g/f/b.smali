.class public final Lcom/tencent/thumbplayer/tcmedia/g/f/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/tencent/thumbplayer/tcmedia/g/f/b;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;

    .line 2
    .line 3
    const/16 v1, 0x780

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lcom/tencent/thumbplayer/tcmedia/g/f/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->e:Lcom/tencent/thumbplayer/tcmedia/g/f/b;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->b:I

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->c:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->a:Z

    .line 10
    .line 11
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->d:Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[initWidth:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", initHeight:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->c:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", reConfigByRealFormat:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->a:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x5d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
