.class public Lcom/xiaomi/stat/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;

.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcom/xiaomi/stat/b/f;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/xiaomi/stat/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/f;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "data.mistat.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    const-string v1, "INTL"

    const-string v2, "data.mistat.intl.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "data.mistat.india.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CN"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    const-string v0, "data.mistat.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/b/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/f;
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/stat/b/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/stat/b/f;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/f;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://"

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    if-lt v0, v2, :cond_1

    const-string v0, "https://"

    goto :goto_0

    :cond_1
    const-string v0, "http://"

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "INTL"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    const-string p0, "RDM"

    const-string v0, "unknown region,set to unknown(singapore)\'s domain"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "region"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    return-void
.end method

.method private static e()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "RDM"

    const-string v1, "can not init in main thread!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    const-string v1, "/map_domain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    sget-object v2, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/stat/b/g;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "INTL"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/b/f;->e()V

    new-instance v0, Lcom/xiaomi/stat/b/g;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/g;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CN"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    const-string p1, "data.mistat.xiaomi.com"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SystemRegion]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "region"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/f;->f()V

    :goto_0
    const-string p1, "RDM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[file-dir]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[CurrentRegion]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[domain]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/f;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/f;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    const-string v1, "region-url"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/b/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    sget-object v2, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/b/g;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "INTL"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    sget-object p1, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    :cond_2
    :goto_1
    sget-object p1, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    const-string v0, "/map_domain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const-string p1, "INTL"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    const-string p1, "data.mistat.intl.xiaomi.com"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "CN"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    const-string p1, "data.mistat.xiaomi.com"

    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "get_all_config"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "mistats/v3"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance p0, Ljava/lang/CloneNotSupportedException;

    const-string v0, "Cannot clone instance of this class"

    invoke-direct {p0, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "key_get"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method