.class Lcom/applovin/impl/v1$e;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/v1;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/applovin/impl/v1;Lcom/applovin/impl/v1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/v1$e;-><init>(Lcom/applovin/impl/v1;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/v1;->a(Landroid/view/MotionEvent;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 4
    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    const-string v0, "AppLovinFullscreenActivity"

    .line 16
    .line 17
    const-string v1, "Video completed"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-static {p1, v0}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/v1;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 29
    .line 30
    iget-boolean v0, p1, Lcom/applovin/impl/r1;->t:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->U()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/r1;->i()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->B()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Video view error ("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, ","

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ")"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v1;->g(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 4
    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "MediaPlayer Info: ("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, ")"

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    const-string v0, "AppLovinFullscreenActivity"

    .line 46
    .line 47
    invoke-virtual {p1, v0, p3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/16 p1, 0x2bd

    .line 51
    .line 52
    if-ne p2, p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->T()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x3

    .line 61
    if-ne p2, p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/applovin/impl/v1;->d0:Lcom/applovin/impl/w0;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->b()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 71
    .line 72
    iget-object p2, p1, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    .line 73
    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-static {p1}, Lcom/applovin/impl/v1;->c(Lcom/applovin/impl/v1;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->F()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/applovin/impl/c2;->b()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->w()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/16 p1, 0x2be

    .line 101
    .line 102
    if-ne p2, p1, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->F()V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 110
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/v1;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/applovin/impl/v1;->b(Lcom/applovin/impl/v1;)Lcom/applovin/impl/v1$e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/applovin/impl/v1;->b(Lcom/applovin/impl/v1;)Lcom/applovin/impl/v1$e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/applovin/impl/v1;->g0:Z

    .line 27
    .line 28
    xor-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 35
    .line 36
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v2, v2

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    long-to-int v1, v1

    .line 48
    iput v1, v0, Lcom/applovin/impl/r1;->u:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-long v1, p1

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/v1;->d(J)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/applovin/impl/v1;->P()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 68
    .line 69
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    iget-object p1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "MediaPlayer prepared: "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/applovin/impl/v1$e;->a:Lcom/applovin/impl/v1;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/v1;)Landroid/media/MediaPlayer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "AppLovinFullscreenActivity"

    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    return-void
.end method
