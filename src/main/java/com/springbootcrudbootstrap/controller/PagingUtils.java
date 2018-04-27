package com.springbootcrudbootstrap.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PagingUtils {

	public static final Integer RecordPerPage = 5;
	private static final Logger LOGGER = LoggerFactory.getLogger(PagingUtils.class);
	
	public static Integer getRecordperpage() {
		return RecordPerPage;
	}

	public static Integer totalPage(int page, int totalRecord) {

		int recordsPerPage = RecordPerPage;
		int totalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		int startPage = 1;
		int endPage = 5;
		if (totalPage > 5) {
			if (page > 3) {
				startPage = page - 2;
				endPage = page + 2;
			}
			if (endPage > totalPage) {
				startPage = totalPage - 4;
				endPage = totalPage;
			}
		} else {
			endPage = totalPage;
		}

		int firstRecord = (page - 1) * recordsPerPage + 1;
		int endRecord = page * recordsPerPage > totalRecord ? totalRecord : page * recordsPerPage;

		int finalTotalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		return finalTotalPage;
	}

	public static Integer startPage(int page, int totalRecord) {

		int recordsPerPage = RecordPerPage;
		int totalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		int startPage = 1;
		int endPage = 5;
		if (totalPage > 5) {
			if (page > 3) {
				startPage = page - 2;
				endPage = page + 2;
			}
			if (endPage > totalPage) {
				startPage = totalPage - 4;
				endPage = totalPage;
			}
		} else {
			endPage = totalPage;
		}

		int firstRecord = (page - 1) * recordsPerPage + 1;
		int endRecord = page * recordsPerPage > totalRecord ? totalRecord : page * recordsPerPage;

		int finalTotalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		return startPage;
	}

	public static Integer endPage(int page, int totalRecord) {

		int recordsPerPage = RecordPerPage;
		int totalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		int startPage = 1;
		int endPage = 5;
		if (totalPage > 5) {
			if (page > 3) {
				startPage = page - 2;
				endPage = page + 2;
			}
			if (endPage > totalPage) {
				startPage = totalPage - 4;
				endPage = totalPage;
			}
		} else {
			endPage = totalPage;
		}

		int firstRecord = (page - 1) * recordsPerPage + 1;
		int endRecord = page * recordsPerPage > totalRecord ? totalRecord : page * recordsPerPage;

		int finalTotalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		return endPage;
	}

	public static Integer firstRecord(int page, int totalRecord) {

		int recordsPerPage = RecordPerPage;
		int totalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		int startPage = 1;
		int endPage = 5;
		if (totalPage > 5) {
			if (page > 3) {
				startPage = page - 2;
				endPage = page + 2;
			}
			if (endPage > totalPage) {
				startPage = totalPage - 4;
				endPage = totalPage;
			}
		} else {
			endPage = totalPage;
		}

		int firstRecord = (page - 1) * recordsPerPage + 1;
		int endRecord = page * recordsPerPage > totalRecord ? totalRecord : page * recordsPerPage;

		int finalTotalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		return firstRecord;
	}

	public static Integer endRecord(int page, int totalRecord) {

		int recordsPerPage = RecordPerPage;
		int totalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		int startPage = 1;
		int endPage = 5;
		if (totalPage > 5) {
			if (page > 3) {
				startPage = page - 2;
				endPage = page + 2;
			}
			if (endPage > totalPage) {
				startPage = totalPage - 4;
				endPage = totalPage;
			}
		} else {
			endPage = totalPage;
		}

		int firstRecord = (page - 1) * recordsPerPage + 1;
		int endRecord = page * recordsPerPage > totalRecord ? totalRecord : page * recordsPerPage;

		int finalTotalPage = totalRecord / recordsPerPage + (totalRecord % recordsPerPage > 0 ? 1 : 0);

		return endRecord;
	}
}
