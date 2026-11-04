.class Lcom/android/internal/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final blacklist mListener:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor blacklist <init>(Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    if-eqz p1, :cond_9

    .line 38
    iget-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-interface {p1, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 40
    :cond_9
    return-void
.end method

.method public whitelist onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 45
    return-void
.end method
