.class Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public onASyncCallResult(IJII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onASyncCallResult, callType:"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", opaque:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", errorType:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", errorCode:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$b;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$b;-><init>()V

    .line 51
    .line 52
    .line 53
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$b;->a:I

    .line 54
    .line 55
    iput-wide p2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$b;->b:J

    .line 56
    .line 57
    iput p4, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$b;->c:I

    .line 58
    .line 59
    iput p5, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$b;->d:I

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onDetailInfo(Lcom/tencent/thumbplayer/tcmedia/core/common/TPDetailInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onDetailInfo, type:"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPDetailInfo;->type:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", time:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-wide v2, p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPDetailInfo;->timeSince1970Us:J

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onError(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onError, msgType:"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", errorCode:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$c;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$c;-><init>()V

    .line 35
    .line 36
    .line 37
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$c;->a:I

    .line 38
    .line 39
    iput p2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$c;->b:I

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onInfoLong(IJJ)V
    .locals 1

    .line 1
    const/16 v0, 0xfd

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-class p1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapDrmType;

    .line 6
    .line 7
    long-to-int p2, p2

    .line 8
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toTPIntValue(Ljava/lang/Class;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/a;->b(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$d;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$d;-><init>()V

    .line 19
    .line 20
    .line 21
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$d;->a:I

    .line 22
    .line 23
    iput-wide p2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$d;->b:J

    .line 24
    .line 25
    iput-wide p4, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$d;->c:J

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onInfoObject(ILjava/lang/Object;JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "onInfoObject, infoType:"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", objParam:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->b(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$e;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$e;-><init>()V

    .line 43
    .line 44
    .line 45
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$e;->a:I

    .line 46
    .line 47
    iput-object p2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$e;->b:Ljava/lang/Object;

    .line 48
    .line 49
    iput-wide p3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$e;->c:J

    .line 50
    .line 51
    iput-wide p5, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$e;->d:J

    .line 52
    .line 53
    const/4 p1, 0x3

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/b$1;->a(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
