.class Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
