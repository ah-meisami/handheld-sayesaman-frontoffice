package com.example.sktheme;

public interface customAnimationListener {
	public void animationStarted(Thread t, customAnime a);

	public void animationFinished(Thread t, customAnime a);

	public void animationRepeat(Thread t, customAnime a);
}
